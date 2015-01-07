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
use ONGR\XtCommerceConnectorBundle\Tests\Functional\ESDoctrineTestCase;
use ONGR\ElasticsearchBundle\DSL\Search;
use ONGR\ElasticsearchBundle\ORM\Repository;
use Symfony\Bundle\FrameworkBundle\Console\Application;
use Symfony\Component\Console\Tester\CommandTester;

/**
 * Functional test for XtCommerce connector.
 */
class ImportCommandTest extends ESDoctrineTestCase
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
            ],
            [
                'is_active' => '1',
                'title' => 'Categorie 1',
                'left' => '1',
                'right' => '2',
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
                'slug' => 'en/shipping-returns',
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
                'url' => 'media/images/popup/shuwa.jpg',
                'title' => 'shuwa.jpg',
            ],
        ],
        'ONGRXtCommerceConnectorBundle:ProductDocument' => [
            [
                'cat' => [
                    0 => [
                        'is_active' => 1,
                        'title' => 'Categorie 1',
                        'left' => 1,
                        'right' => 2,
                    ],
                ],
                'title' => 'Product with special price',
                'description' => 'Standard product with special pricing',
                'sku' => 'ean002',
                'price' => '150.0000',
            ],
            [
                'cat' => [
                    0 => [
                        'is_active' => 1,
                        'title' => 'Categorie 1',
                        'left' => 1,
                        'right' => 2,
                    ],
                ],
                'title' => 'Product with graduated pricing',
                'description' => 'Standard product with graduated pricing',
                'sku' => 'ean003',
                'price' => '50.0000',
            ],
            [
                'images' => [
                    '0' => [
                        'url' => 'media/images/popup/shuwa.jpg',
                        'title' => 'shuwa.jpg',
                    ],
                ],
                'cat' => [
                    '0' => [

                        'is_active' => '1',
                        'title' => 'Categorie 1',
                        'left' => '1',
                        'right' => '2',
                    ],
                    '1' => [

                        'is_active' => '1',
                        'title' => 'Categorie 2',
                        'left' => '3',
                        'right' => '4',
                    ],
                ],
                'title' => 'Default product 2',
                'description' => "<p>Standard product with normal pricing</p>\n",
                'sku' => 'ean006',
                'price' => '10.0000',
            ],
            [
                'cat' => [

                    '0' => [

                        'is_active' => '1',
                        'title' => 'Categorie 1',
                        'left' => '1',
                        'right' => '2',
                    ],
                ],
                'title' => 'Standardproduct',
                'description' => 'Standard product with normal pricing',
                'sku' => 'ean001',
                'price' => '50.0000',
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
        $actualDocuments = [];

        foreach ($this->repositories as $key) {
            $repository = $manager->getRepository($key);

            // Temporary workaround for ESB issue #34 (https://github.com/ongr-io/ElasticsearchBundle/issues/34).
            usleep(90000);
            foreach ($repository->execute(new Search(), Repository::RESULTS_ARRAY) as $item) {
                    $actualDocuments[$key][] = $item;
            }
        }

        sort($this->expectedDocuments);
        sort($actualDocuments);

        $this->assertEquals($this->expectedDocuments, $actualDocuments);
    }
}
