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

use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;
use ONGR\ElasticsearchBundle\ORM\Repository;
use Traversable;

/**
 * This class is able to iterate over entities without storing objects in doctrine memory.
 */
class ImportIterator extends \IteratorIterator
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
     * @param Traversable      $iterator
     * @param ImportSubQuery[] $subQueries
     * @param Repository       $repository
     */
    public function __construct(Traversable $iterator, $subQueries, Repository $repository)
    {
        $this->repository = $repository;
        $this->subQueries = $subQueries;

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
}
