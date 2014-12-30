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

        $document = $item->getDocument();
        $item = $item->getEntity();

        foreach ($item as $column => $value) {
            $setter = 'set' . ucfirst($column);
            if (method_exists($document, $setter)) {
                $document->$setter($value);
            }
        }
    }
}
