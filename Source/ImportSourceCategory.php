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

/**
 * Provides source for category import.
 */
class ImportSourceCategory extends AbstractImportSource
{
    /**
     * {@inheritdoc}
     */
    public function onSource(SourcePipelineEvent $event)
    {
        // Categories.
        $sql = file_get_contents('Resources/config/queries/categories.sql');

        $event->addSource(
            new ImportIterator(
                ImportHelper::getStatement($this->connection, $sql, $this->defaultBindings),
                [],
                $this->repository
            )
        );
    }
}
