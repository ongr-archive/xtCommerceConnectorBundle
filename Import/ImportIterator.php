<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceBundle\Import;

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
    private $repository;

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
        $product = $databaseThing[0];

        foreach ($this->subQueries as $subQuery) {
            $product[$subQuery->getKeyTo()] = $subQuery->execute($product[$subQuery->getKeyFrom()]);
        }

        return new ImportItem($product, $this->repository->createDocument());
    }

}
