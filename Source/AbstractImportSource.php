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
use ONGR\ElasticsearchBundle\ORM\Manager;
use ONGR\ElasticsearchBundle\ORM\Repository;

/**
 * Provides abstract source for import.
 */
abstract class AbstractImportSource extends AbstractImportSourceEventListener
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
     * Constructor.
     *
     * @param Connection $connection
     * @param Manager    $manager
     * @param string     $repositoryType
     * @param int        $shopId
     * @param string     $langId
     * @param array|null $defaultBindings
     */
    public function __construct(
        Connection $connection,
        Manager $manager,
        $repositoryType,
        $shopId,
        $langId,
        $defaultBindings = null
    ) {
        // Refactor the repositories out.

        $this->connection = $connection;
        $this->repository = $manager->getRepository($repositoryType);
        $this->shopId = $shopId;
        $this->langId = $langId;
        if ($defaultBindings === null) {
            $this->defaultBindings = ['store_id' => $this->shopId, 'lang_id' => $this->langId];
        }
    }
}
