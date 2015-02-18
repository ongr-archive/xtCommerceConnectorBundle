<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Import;

use Doctrine\DBAL\Statement;
use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;
use ONGR\ElasticsearchBundle\ORM\Repository;
use Traversable;

/**
 * This class is able to iterate over entities without storing objects in doctrine memory.
 */
class ImportIterator extends \IteratorIterator implements \Countable
{
    /**
     * @var Repository
     */
    protected $repository;

    /**
     * @var ImportSubQuery[] Queries for sub-objects.
     */
    private $subQueries;

    /**
     * @var Traversable
     */
    private $iterator;

    /**
     * @param Traversable      $iterator
     * @param ImportSubQuery[] $subQueries
     * @param Repository       $repository
     */
    public function __construct(Traversable $iterator, $subQueries, Repository $repository)
    {
        $this->repository = $repository;
        $this->subQueries = $subQueries;
        $this->iterator = $iterator;

        parent::__construct($iterator);
    }

    /**
     * {@inheritdoc}
     */
    public function current()
    {
        $databaseThing = parent::current();

        foreach ($this->subQueries as $subQuery) {
            $parent = $databaseThing[$subQuery->getParentIdFrom()];

            if (array_key_exists($subQuery->getKeyFrom(), $databaseThing)) {
                $source = $databaseThing[$subQuery->getKeyFrom()];
            } else {
                $source = null;
            }

            $databaseThing[$subQuery->getKeyTo()] = $subQuery->execute(
                $source,
                $parent
            );
        }

        return new ImportItem($databaseThing, $this->repository->createDocument());
    }

    /**
     * {@inheritdoc}
     */
    public function count()
    {
        if ($this->iterator instanceof Statement) {
            return $this->iterator->rowCount();
        }

        // Unknown length.
        return PHP_INT_MAX;
    }
}
