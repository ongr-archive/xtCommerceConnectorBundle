<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Modifier;

use ONGR\ConnectionsBundle\EventListener\AbstractImportModifyEventListener;
use ONGR\ConnectionsBundle\Pipeline\Item\AbstractImportItem;
use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;
use ONGR\XtCommerceConnectorBundle\Import\ImportHelper;

/**
 * Class ImportModifier. Maps from database to Elasticsearch.
 */
class ImportModifier extends AbstractImportModifyEventListener
{
    /**
     * Maps.
     *
     * @param AbstractImportItem $item
     */
    public function modify(AbstractImportItem $item)
    {
        if (!$item instanceof ImportItem) {
            return;
        }

        $item->setDocument(ImportHelper::assign($item->getEntity(), $item->getDocument()));
    }
}
