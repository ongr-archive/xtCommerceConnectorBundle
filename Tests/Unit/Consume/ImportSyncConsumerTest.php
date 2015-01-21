<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit\Consume;

use ONGR\ConnectionsBundle\Pipeline\Event\ItemPipelineEvent;
use ONGR\ConnectionsBundle\Pipeline\Item\ImportItem;
use ONGR\XtCommerceConnectorBundle\Consumer\ImportSyncConsumer;

/**
 * Tests for sync consumer.
 */
class ImportSyncConsumerTest extends \PHPUnit_Framework_TestCase
{
    /**
     * Tests normal logic of ImportSyncConsumer.
     */
    public function testImportSyncNormal()
    {
        $mockManager = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Manager')
            ->disableOriginalConstructor()
            ->getMock();

        $mockStorage = $this->getMockBuilder('ONGR\ConnectionsBundle\Sync\SyncStorage\SyncStorage')
            ->disableOriginalConstructor()
            ->getMock();

        $mockStorage->expects($this->once())->method('deleteItem')->with('-1');

        $mockDoc = $this->getMockForAbstractClass('ONGR\ElasticsearchBundle\Document\DocumentInterface');

        $import = new ImportSyncConsumer($mockManager, $mockStorage);

        $event = new ItemPipelineEvent(new ImportItem(['sync_id' => -1], $mockDoc));

        $import->onConsume($event);
    }

    /**
     * Tests logic of ImportSyncConsumer when there is no sync_id.
     */
    public function testImportSyncNoSyncId()
    {
        $mockManager = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Manager')
            ->disableOriginalConstructor()
            ->getMock();

        $mockStorage = $this->getMockBuilder('ONGR\ConnectionsBundle\Sync\SyncStorage\SyncStorage')
            ->disableOriginalConstructor()
            ->getMock();

        $mockLogger = $this->getMockForAbstractClass('Psr\Log\LoggerInterface');

        $mockLogger
            ->expects($this->once())
            ->method('log')
            ->with('notice', 'Item data does not contain sync_id field.', []);

        $mockDoc = $this->getMockForAbstractClass('ONGR\ElasticsearchBundle\Document\DocumentInterface');
        $mockDoc->expects($this->any())->method('getId')->willReturn(1);

        $import = new ImportSyncConsumer($mockManager, $mockStorage);

        $event = new ItemPipelineEvent(new ImportItem([], $mockDoc));

        $import->setLogger($mockLogger);

        $import->onConsume($event);
    }

    /**
     * Tests logic of ImportSyncConsumer when wrong item is provided.
     */
    public function testImportSyncWrongItem()
    {
        $mockManager = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Manager')
            ->disableOriginalConstructor()
            ->getMock();

        $mockStorage = $this->getMockBuilder('ONGR\ConnectionsBundle\Sync\SyncStorage\SyncStorage')
            ->disableOriginalConstructor()
            ->getMock();

        $mockLogger = $this->getMockForAbstractClass('Psr\Log\LoggerInterface');

        $mockLogger
            ->expects($this->once())
            ->method('log')
            ->with('notice', 'Unexpected content: expected ImportItem, got ArrayIterator.', []);

        $import = new ImportSyncConsumer($mockManager, $mockStorage);

        $event = new ItemPipelineEvent(new \ArrayIterator());

        $import->setLogger($mockLogger);

        $import->onConsume($event);
    }
}
