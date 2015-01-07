<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit\Import;

use ONGR\XtCommerceConnectorBundle\Import\ImportIterator;

class ImportIteratorTest extends \PHPUnit_Framework_TestCase
{
    /**
     * Tests behaviour of ImportIterator with no subqueries present.
     */
    public function testImportIterator()
    {
        $iterator = $this->getMockedImportIterator();

        foreach ($iterator as $key => $value) {
            $this->assertInstanceOf('ONGR\ConnectionsBundle\Pipeline\Item\ImportItem', $value);
        }
    }

    /**
     * Tests behaviour of ImportIterator with subqueries present.
     */
    public function testImportIteratorSubqueries()
    {
        $mockSubQuery = $this->getMockSubQuery();

        $mockSubQuery->expects($this->exactly(4))->method('getKeyFrom')->willReturn('test2');

        $iterator = $this->getMockedImportIterator([$mockSubQuery]);

        foreach ($iterator as $key => $value) {
            $this->assertInstanceOf('ONGR\ConnectionsBundle\Pipeline\Item\ImportItem', $value);
            $this->assertEquals('test_return', $value->getEntity()['test_key_to']);
        }
    }

    /**
     * Tests behaviour of ImportIterator with subqueries present, but no source id data.
     */
    public function testImportIteratorSubqueriesNoSrc()
    {
        $mockSubQuery = $this->getMockSubQuery();

        $mockSubQuery->expects($this->exactly(2))->method('getKeyFrom')->willReturn('no_key');

        $iterator = $this->getMockedImportIterator([$mockSubQuery]);

        foreach ($iterator as $key => $value) {
            $this->assertInstanceOf('ONGR\ConnectionsBundle\Pipeline\Item\ImportItem', $value);
            $this->assertEquals('test_return', $value->getEntity()['test_key_to']);
        }
    }

    /**
     * Returns new ImportIterator with mocked-up repository.
     *
     * @param mixed $subQueries
     *
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    private function getMockedImportIterator($subQueries = [])
    {
        $traversable = new \ArrayIterator(
            [
                '0' => [ 'test' => '1', 'test2' => '2' ],
                '1' => [ 'test' => '1', 'test2' => '2' ],
            ]
        );

        $mockRepository = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Repository')
            ->disableOriginalConstructor()
            ->setMethods(['createDocument'])
            ->getMock();

        $mockDocument = $this->getMockForAbstractClass('ONGR\ElasticsearchBundle\Document\DocumentInterface');

        $mockRepository
            ->expects($this->exactly(2))
            ->method('createDocument')
            ->withAnyParameters()
            ->willReturn($mockDocument);

        return new ImportIterator($traversable, $subQueries, $mockRepository);
    }

    /**
     * Returns a mock of subQuery.
     *
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockSubQuery()
    {
        $mockSubQuery = $this->getMockBuilder('ONGR\XtCommerceConnectorBundle\Import\ImportSubQuery')
            ->disableOriginalConstructor()
            ->setMethods(['getParentIdFrom', 'getKeyFrom', 'getKeyTo', 'execute'])
            ->getMock();
        $mockSubQuery->expects($this->exactly(2))->method('getParentIdFrom')->willReturn('test');
        $mockSubQuery->expects($this->exactly(2))->method('getKeyTo')->willReturn('test_key_to');
        $mockSubQuery->expects($this->exactly(2))->method('execute')->willReturn('test_return');

        return $mockSubQuery;
    }
}
