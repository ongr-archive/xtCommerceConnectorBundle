<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Functional\Import;

use ONGR\ConnectionsBundle\Command\ImportFullCommand;
use ONGR\ConnectionsBundle\Command\SyncExecuteCommand;
use ONGR\ConnectionsBundle\Command\SyncProvideCommand;
use ONGR\ConnectionsBundle\Service\PairStorage;
use ONGR\ConnectionsBundle\Sync\DiffProvider\Binlog\BinlogDiffProvider;
use ONGR\ConnectionsBundle\Sync\DiffProvider\Binlog\BinlogParser;
use ONGR\ConnectionsBundle\Sync\StorageManager\MysqlStorageManager;
use ONGR\ElasticsearchBundle\DSL\Search;
use ONGR\ElasticsearchBundle\ORM\Repository;
use ONGR\XtCommerceConnectorBundle\Tests\Functional\ESDoctrineTestCase;
use Symfony\Bundle\FrameworkBundle\Console\Application;
use Symfony\Component\Console\Tester\CommandTester;
use \DateTime;

/**
 * Class SyncExecuteCommandTest - tests for sync.
 */
class SyncExecuteCommandTest extends ESDoctrineTestCase
{
    /**
     * @var array Array of expected documents.
     */
    private $expectedDocuments = [
        'ONGRXtCommerceConnectorBundle:CategoryDocument' => [
            [
                'is_active' => '1',
                'title' => 'Categorie 2',
                'left' => '3',
                'right' => '4',
                'sort' => '0',
                'parent_id' => '0',
            ],
            [
                'is_active' => '1',
                'title' => 'Altered category',
                'left' => '1',
                'right' => '2',
                'sort' => '0',
                'parent_id' => '0',
            ],
            [
                'is_active' => '1',
                'title' => 'New category ENGLISH',
                'left' => '1',
                'right' => '2',
                'sort' => '0',
                'parent_id' => '0',
            ],
        ],
        'ONGRXtCommerceConnectorBundle:ContentDocument' => [
            [
                'slug' => 'en/privacy-notice',
                'title' => 'Privacy Notice',
                'content' => 'Put here your Privacy Notice information',
            ],
            [
                'slug' => 'en/right-of-rescission',
                'title' => 'Right of rescission',
                'content' => 'Your informations on the right of rescission',
            ],
            [
                'slug' => 'en/conditions-of-use',
                'title' => 'Conditions of Use',
                'content' => 'Conditions of Use<br />Put here your Conditions of Use information',
            ],
            [
                'slug' => 'en/about-us',
                'title' => 'About Us',
                'content' => 'Your informations about your shop',
            ],
            [
                'title' => 'Payment',
                'content' => '<p>List here your payment methods.</p>',
            ],
            [
                'slug' => 'en/impressum',
                'title' => 'Impressum',
                'content' => 'Put here your Company information',
            ],
            [
                'slug' => 'URL change test',
                'title' => 'Shipping & Returns',
                'content' => 'Put here your Shipping & Returns information',
            ],
            [
                'slug' => 'en/contact',
                'title' => 'Contact',
                'content' => 'Please enter your contact informations',
            ],
            [
                'slug' => 'en/index',
                'title' => 'Index',
                'content' => 'This is a standard installation of the xt:Commerce 4.1 Shopsoftware.',
            ],
        ],
        'ONGRXtCommerceConnectorBundle:ImageDocument' => [
            [
                'url' => 'media/images/popup/Image_description_test',
                'title' => 'Image_description_test',
            ],
        ],
        'ONGRXtCommerceConnectorBundle:ProductDocument' => [
            [
                'categories' => [
                    '0' => [

                        'is_active' => '1',
                        'title' => 'New category ENGLISH',
                        'left' => '1',
                        'right' => '2',
                        'sort' => '0',
                        'parent_id' => '0',
                    ],
                ],
                'title' => 'Standardproduct',
                'description' => 'Standard product with normal pricing',
                'sku' => 'ean001',
                'price' => '50.0000',
                'images' => [],
            ],
            [
                'categories' => [
                    0 => [
                        'is_active' => '1',
                        'title' => 'Altered category',
                        'left' => '1',
                        'right' => '2',
                        'sort' => '0',
                        'parent_id' => '0',
                    ],
                ],
                'title' => 'Product with special price',
                'description' => 'product_description_changed',
                'sku' => 'ean002',
                'price' => '150.0000',
                'images' => [],
            ],
            [
                'categories' => [
                    0 => [
                        'is_active' => 1,
                        'title' => 'Altered category',
                        'left' => 1,
                        'right' => 2,
                        'sort' => '0',
                        'parent_id' => '0',
                    ],
                ],
                'title' => 'Product with graduated pricing',
                'description' => 'Standard product with graduated pricing',
                'sku' => 'ean003',
                'price' => '50.0000',
                'images' => [],
            ],
        ],
    ];

    /**
     * @var array Array of repositories to check.
     */
    private $repositories = [
        'ONGRXtCommerceConnectorBundle:CategoryDocument',
        'ONGRXtCommerceConnectorBundle:ContentDocument',
        'ONGRXtCommerceConnectorBundle:ImageDocument',
        'ONGRXtCommerceConnectorBundle:ProductDocument',
    ];

    /**
     * @var MysqlStorageManager
     */
    private $managerMysql;

    /**
     * Clear logs before each test.
     */
    public function setUp()
    {
        parent::setUp();

        $this
            ->getServiceContainer()
            ->get('es.manager')
            ->getConnection()
            ->dropAndCreateIndex();

        $this->importData('Import/xtCommerce.sql');

        $this->getConnection()->executeQuery('RESET MASTER');

        /** @var MysqlStorageManager $managerMysql */
        $this->managerMysql = $this
            ->getServiceContainer()
            ->get('ongr_connections.sync.storage_manager.mysql_storage_manager');
        $this->managerMysql->createStorage(0);
    }

    /**
     * Check if sync actually changes anything.
     */
    public function testExecute()
    {
        $manager = $this->getManager();

        $application = new Application(static::$kernel);
        $application->add(new ImportFullCommand());
        $command = $application->find('ongr:import:full');

        $commandTester = new CommandTester($command);
        $commandTester->execute(['command' => $command->getName()]);

        // Set last sync date to now.
        $this->setLastSync(new DateTime('now'), BinlogParser::START_TYPE_DATE);

        $this->importData('Import/diffmaker.sql');

        $application = new Application(static::$kernel);
        $application->add(new SyncProvideCommand());
        $command = $application->find('ongr:sync:provide');
        $commandTester = new CommandTester($command);
        $commandTester->execute(
            [
                'command' => $command->getName(),
                'target' => 'default',
            ]
        );

        $application = new Application(static::$kernel);
        $application->add(new SyncExecuteCommand());
        $command = $application->find('ongr:sync:execute');
        $commandTester = new CommandTester($command);
        $commandTester->execute(
            [
                'command' => $command->getName(),
                'target' => 'default',
            ]
        );

        // Check results.
        $actualDocuments = [];

        foreach ($this->repositories as $key) {
            $repository = $manager->getRepository($key);

            foreach ($repository->execute(new Search(), Repository::RESULTS_ARRAY) as $item) {
                $actualDocuments[$key][] = $item;
            }
        }

        foreach ($this->repositories as $key) {
            sort($actualDocuments[$key]);
            sort($this->expectedDocuments[$key]);
        }

        $this->assertEquals($this->expectedDocuments, $actualDocuments);
    }

    /**
     * Sets last_sync_date in bin log format or sets last_sync_position.
     *
     * @param \DateTime|int $from
     * @param int           $startType
     */
    private function setLastSync($from, $startType)
    {
        /** @var PairStorage $pairStorage */
        $pairStorage = $this->getServiceContainer()->get('ongr_connections.pair_storage');

        if ($startType == BinlogParser::START_TYPE_DATE) {
            // Sometimes, mysql, php and server timezone could differ, we need convert time seen by php
            // to the same time in the same timezone as is used in mysqlbinlog.
            // This issue is for tests only, should not affect live website.

            $result = $this->managerMysql->getConnection()->executeQuery('SELECT @@global.time_zone');
            $time_zone = $result->fetchAll()[0]['@@global.time_zone'];

            // If mysql timezone is the same as systems, string 'SYSTEM' is returned, which is not what we want.
            if ($time_zone == 'SYSTEM') {
                $result = $this->managerMysql->getConnection()->executeQuery('SELECT @@system_time_zone');
                $time_zone = $result->fetchAll()[0]['@@system_time_zone'];
            }

            $from->setTimezone(new \DateTimeZone($time_zone));

            $pairStorage->set(BinlogDiffProvider::LAST_SYNC_DATE_PARAM, $from->format('Y-m-d H:i:s'));
        } elseif ($startType == BinlogParser::START_TYPE_POSITION) {
            $pairStorage->set(BinlogDiffProvider::LAST_SYNC_POSITION_PARAM, $from);
        }
    }
}
