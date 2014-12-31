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

use ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent;
use ONGR\XtCommerceConnectorBundle\Import\ImportHelper;
use ONGR\XtCommerceConnectorBundle\Import\ImportIterator;
use ONGR\XtCommerceConnectorBundle\Import\ImportSubQuery;

/**
 * Provides source for product import.
 */
class ImportSourceProduct extends AbstractImportSource
{
    /**
     * {@inheritdoc}
     */
    public function onSource(SourcePipelineEvent $event)
    {
        /*
         * Products.
         *
         * This part is a bit tricky, because we need three statements - one for product, one for images, one for cats.
         * So we use sub query objects.
         */

        $sql = file_get_contents('Resources/config/queries/products.sql');

        $subQueries[] = new ImportSubQuery(
            $this->connection,
            'images',
            'images',
            'ONGR\XtCommerceConnectorBundle\Documents\ImageObject',
            file_get_contents('Resources/config/queries/subquery_images.sql'),
            [ 'image_id' => ImportHelper::SELF_ID, 'lang_id' => $this->langId ],
            '|'
        );

        $subQueries[] = new ImportSubQuery(
            $this->connection,
            'categories',
            'categories',
            'ONGR\XtCommerceConnectorBundle\Documents\CategoryObject',
            file_get_contents('Resources/config/queries/subquery_categories.sql'),
            [ 'category_id' => ImportHelper::SELF_ID ],
            '|'
        );

        // This subquery should return just an array of strings; hence the sql - JUST_EXPLODE.
        $subQueries[] = new ImportSubQuery(
            $this->connection,
            'seo_urls',
            'slugs',
            '',
            ImportSubQuery::JUST_EXPLODE,
            [],
            '|'
        );

        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $sql, $this->defaultBindings),
                $subQueries,
                $this->repository
            )
        );
    }
}
