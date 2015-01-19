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
use ONGR\XtCommerceConnectorBundle\Import\DeleteIterator;
use ONGR\XtCommerceConnectorBundle\Import\ImportHelper;

/**
 * Kind of the same as ImportSource, but deletes instead of creating/updating.
 */
class DeleteSource extends ImportSource
{
    /**
     * {@inheritdoc}
     */
    public function onSource(SourcePipelineEvent $event)
    {
        $event->addSource(
            new DeleteIterator(
                ImportHelper::getStatement($this->connection, $this->sql, $this->defaultBindings),
                $this->subQueries,
                $this->repository
            )
        );
    }
}
