<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Consumer;

use ONGR\ConnectionsBundle\Pipeline\Event\ItemPipelineEvent;
use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;
use ONGR\ConnectionsBundle\Sync\SyncStorage\SyncStorage;
use ONGR\ElasticsearchBundle\ORM\Manager;

/**
 * This consumer cleans up after syncing. It is a good consumer.
 */
class ImportSyncConsumer extends ImportConsumer
{
    /**
     * @var SyncStorage
     */
    protected $syncStorage;

    /**
     * @var array
     */
    protected $syncStorageData;

    /**
     * @param Manager     $manager
     * @param SyncStorage $syncStorage
     */
    public function __construct(Manager $manager, SyncStorage $syncStorage)
    {
        $this->manager = $manager;
        $this->syncStorage = $syncStorage;
    }

    /**
     * Consume event for sync.
     *
     * @param ItemPipelineEvent $event
     */
    public function onConsume(ItemPipelineEvent $event)
    {
        /** @var ImportItem $importItem */
        $importItem = $event->getItem();
        if ($importItem instanceof ImportItem) {
            $data = $importItem->getEntity();
            if ($importItem->getDocument()->getId()) {
                $this->manager->persist($importItem->getDocument());
            }
            if (is_array($data) && array_key_exists('sync_id', $data)) {
                $this->syncStorage->deleteItem(
                    $data['sync_id'],
                    [$this->syncStorageData['shop_id']]
                );
            } else {
                $this->log('Item data does not contain sync_id field.', 'notice');

                return;
            }
        } else {
            $this->log('Unexpected content: expected ImportItem, got ' . get_class($importItem) . '.', 'notice');

            return;
        }
    }
}
