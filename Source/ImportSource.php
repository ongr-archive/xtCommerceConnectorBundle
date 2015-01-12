<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Source;

use ONGR\ConnectionsBundle\EventListener\AbstractImportSourceEventListener;
use Doctrine\DBAL\Connection;
use ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent;
use ONGR\ElasticsearchBundle\ORM\Manager;
use ONGR\ElasticsearchBundle\ORM\Repository;
use ONGR\XtCommerceConnectorBundle\Import\ImportHelper;
use ONGR\XtCommerceConnectorBundle\Import\ImportIterator;
use ONGR\XtCommerceConnectorBundle\Import\ImportSubQuery;

/**
 * Provides sources for import.
 */
class ImportSource extends AbstractImportSourceEventListener
{
    /**
     * @var Connection Connection to database.
     */
    protected $connection;

    /**
     * @var Repository Elasticsearch repository for something. Most probably document. Could be anything, really.
     */
    protected $repository;

    /**
     * @var int
     */
    protected $shopId;

    /**
     * @var string
     */
    protected $langId;

    /**
     * @var array
     */
    protected $defaultBindings;

    /**
     * @var ImportSubQuery[]
     */
    protected $subQueries;

    /**
     * @var string
     */
    protected $sql;

    /**
     * Constructor.
     *
     * @param Connection       $connection
     * @param Manager          $manager
     * @param ImportSubQuery[] $subQueries
     * @param string           $sql
     * @param string           $repositoryType
     * @param int              $shopId
     * @param string           $langId
     * @param array|null       $defaultBindings
     */
    public function __construct(
        Connection $connection,
        Manager $manager,
        $subQueries,
        $sql,
        $repositoryType,
        $shopId,
        $langId,
        $defaultBindings = null
    ) {
        $this->connection = $connection;
        $this->repository = $manager->getRepository($repositoryType);
        $this->subQueries = $subQueries;
        $this->shopId = $shopId;
        $this->langId = $langId;
        $this->sql = $sql;

        if ($defaultBindings === null) {
            $this->defaultBindings = ['store_id' => $this->shopId, 'lang_id' => $this->langId];
        } else {
            $this->defaultBindings = $defaultBindings;
        }
    }

    /**
     * {@inheritdoc}
     */
    public function onSource(SourcePipelineEvent $event)
    {
        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $this->sql, $this->defaultBindings),
                $this->subQueries,
                $this->repository
            )
        );
    }
}
