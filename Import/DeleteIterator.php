<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Import;

use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;

/**
 * Deletes provided items from Elasticsearch.
 */
class DeleteIterator extends ImportIterator
{
    /**
     * {@inheritdoc}
     */
    public function current()
    {
        $id = null;
        $item = parent::current();
        $out = [];
        if ($item instanceof ImportItem) {
            $databaseThing = $item->getEntity();
            if (array_key_exists('id', $databaseThing)) {
                $id = $databaseThing['id'];
            }

            if ($id !== null) {
                $this->repository->remove($id);
            }

            if (array_key_exists('sync_id', $databaseThing)) {
                $out = ['sync_id' => $databaseThing['sync_id']];
            }
        }

        return new ImportItem($out, $this->repository->createDocument());
    }
}
