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
use ONGR\ConnectionsBundle\Tests\Functional\ESDoctrineTestCase;
use ONGR\ElasticsearchBundle\ORM\Repository;
use Symfony\Bundle\FrameworkBundle\Console\Application;
use Symfony\Component\Console\Tester\CommandTester;

/**
 * Functional test for bla.
 */
class ImportCommandTest extends ESDoctrineTestCase
{
    /**
     * @var array Array of expected documents.
     */
    private $expectedDocuments = [
        'ONGRXtCommerceConnectorBundle:CategoryDocument' => [],
        'ONGRXtCommerceConnectorBundle:ContentDocument' => [],
        'ONGRXtCommerceConnectorBundle:ImageDocument' => [],
        'ONGRXtCommerceConnectorBundle:ProductDocument' => [],
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
     * Tests import functionality from xtCommerce.
     */
    public function testImport()
    {
        $kernel = self::createClient()->getKernel();
        $this->importData('Import/xtCommerce.sql');

        $manager = $this->getManager();

        $application = new Application($kernel);
        $application->add(new ImportFullCommand());
        $command = $application->find('ongr:import:full');

        $commandTester = new CommandTester($command);
        $commandTester->execute(['command' => $command->getName()]);

        foreach ($this->repositories as $key) {
            $repository = $manager->getRepository($key);

            $expectedDocuments = $this->expectedDocuments[$key];

            $search = $repository->createSearch();

            // Temporary workaround for ESB issue #34 (https://github.com/ongr-io/ElasticsearchBundle/issues/34).
            usleep(90000);

            foreach ($repository->execute($search, Repository::RESULTS_RAW_ITERATOR) as $document) {
                $actualDocuments[$key][] = $document;
            }
            $this->assertEquals($expectedDocuments, $actualDocuments[$key]);
        }
    }
}
