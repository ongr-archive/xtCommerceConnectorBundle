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

use Doctrine\DBAL\Statement;
use ONGR\ConnectionsBundle\EventListener\AbstractImportSourceEventListener;
use ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent;
use Doctrine\DBAL\Connection;
use ONGR\ElasticsearchBundle\ORM\Repository;
use ONGR\XtCommerceBundle\Import\ImportHelper;
use ONGR\XtCommerceBundle\Import\ImportIterator;
use ONGR\XtCommerceBundle\Import\ImportSubQuery;
use ONGR\XtCommerceBundle\Import\ProductImportIterator;
use PDO;

/**
 * Provides all sources for import.
 */
class ImportSource extends AbstractImportSourceEventListener
{
    /**
     * Constants for distinguishing types of data;
     */
    const DATA_CATEGORY = 0;
    const DATA_CONTENT = 1;
    const DATA_PRODUCT = 2;

    /**
     * @var Connection Connection to database.
     */
    private $connection;

    /**
     * @var Repository Elasticsearch repository for categories.
     */
    private $categoryRepository;

    /**
     * @var Repository Elasticsearch repository for content.
     */
    private $contentRepository;

    /**
     * @var Repository Elasticsearch repository for products.
     */
    private $productRepository;

    /**
     * @var int
     */
    private $shopId;

    /**
     * @var string
     */
    private $langId;

    /**
     * Constructor.
     *
     * @param Connection $connection
     * @param Repository $categoryRepository
     * @param Repository $contentRepository
     * @param Repository $productRepository
     * @param int        $shopId
     * @param string     $langId
     */
    public function __construct(
        Connection $connection,
        Repository $categoryRepository,
        Repository $contentRepository,
        Repository $productRepository,
        $shopId,
        $langId
    ) {
        $this->connection = $connection;
        $this->categoryRepository = $categoryRepository;
        $this->contentRepository = $contentRepository;
        $this->productRepository = $productRepository;
        $this->shopId = $shopId;
        $this->langId = $langId;
    }

    /**
     * {@inheritdoc}
     */
    public function onSource(SourcePipelineEvent $event)
    {
        $defaultBinding = [ 'store_id' => $this->shopId, 'lang_id' => $this->langId ];

        // Categories.
        $sql = file_get_contents('Resources/config/queries/categories.sql');

        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $sql, $defaultBinding),
                [],
                $this->categoryRepository
            )
        );

        // Content.
        $sql = file_get_contents('Resources/config/queries/images.sql');

        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $sql, $defaultBinding),
                [],
                $this->contentRepository
            )
        );

        /*
         * Products.
         *
         * This part is a bit tricky, because we need three statements - one for product, one for images, one for cats.
         * So we use sub query objects.
         */

        $sql = file_get_contents('Resources/config/queries/products.sql');

        $subQueries[] = new ImportSubQuery(
            $this->connection,
            'categories',
            'categories',
            'ONGR\XtConnectorBundle\Documents\CategoryObject',
            file_get_contents('Resources/config/queries/subquery_images.sql'),
            [ 'image_id' => ImportHelper::SELF_ID, 'lang_id' => $this->langId ],
            '|'
        );

        $subQueries[] = new ImportSubQuery(
            $this->connection,
            'categories',
            'categories',
            'ONGR\XtConnectorBundle\Documents\CategoryObject',
            file_get_contents('Resources/config/queries/subquery_categories.sql'),
            [ 'category_id' => ImportHelper::SELF_ID ],
            '|'
        );

        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $sql, $defaultBinding),
                $subQueries,
                $this->productRepository
            )
        );
    }
}
