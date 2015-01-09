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

use ONGR\XtCommerceConnectorBundle\Import\ImportSubQuery;
use ONGR\XtCommerceConnectorBundle\Tests\Unit;

/**
 * Class ImportSubQueryTest.
 */
class ImportSubQueryTest extends Unit\AbstractGetterSetterTest
{
    /**
     * {@inheritdoc}
     */
    public function getFieldsData()
    {
        return [
            ['keyFrom'],
            ['keyTo'],
            ['parentIdFrom'],
            ['classTo'],
            ['query'],
            ['separator'],
            ['queryParameters'],
            ['connection'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getClassName()
    {
        return 'ONGR\XtCommerceConnectorBundle\Import\ImportSubQuery';
    }

    /**
     * Tests behaviour of subQuery class with single-result subquery.
     */
    public function testImportSubQuery()
    {
        $mockConnection = $this->getMockConnection(3);

        $subQuery = new ImportSubQuery(
            $mockConnection,
            'parentId',
            'keyFrom',
            'keyTo',
            'mockClass',
            'anyquery',
            ['test' => 'test'],
            '~~~'
        );

        $subQuery->execute('1~~~2~~~3', 0);
    }

    /**
     * Tests behaviour of subQuery class with multi-result subquery.
     */
    public function testImportSubQueryMulti()
    {
        $mockConnection = $this->getMockConnection(1, []);

        $subQuery = new ImportSubQuery(
            $mockConnection,
            'parentId',
            'keyFrom',
            'keyTo',
            'mockClass',
            'anyquery',
            ['test' => ImportSubQuery::PARENT_ID],
            '~~~'
        );

        $subQuery->execute(null, 0);
    }

    /**
     * Tests behaviour of subQuery class with nonexistent class subquery.
     *
     * @expectedException \LogicException
     * @expectedExceptionMessage subQuery result object instance creation failed: unknown class mockClass
     */
    public function testImportSubQueryMultiException()
    {
        $mockConnection = $this->getMockConnection(1, [0]);

        $subQuery = new ImportSubQuery(
            $mockConnection,
            'parentId',
            'keyFrom',
            'keyTo',
            'mockClass',
            'anyquery',
            ['test' => ImportSubQuery::PARENT_ID],
            '~~~'
        );

        $subQuery->execute(null, 0);
    }

    /**
     * Tests behaviour of subQuery class with existent class subquery.
     */
    public function testImportSubQueryMultiOk()
    {
        $mockConnection = $this->getMockConnection(1, [ 0 => [ 0 => 'the only result'] ]);

        $mockDocument = $this->getMockForAbstractClass('ONGR\ElasticsearchBundle\Document\DocumentInterface');

        $subQuery = new ImportSubQuery(
            $mockConnection,
            'parentId',
            'keyFrom',
            'keyTo',
            get_class($mockDocument),
            'anyquery',
            [ 'self' => ImportSubQuery::SELF_ID ],
            '~~~'
        );

        $this->assertEquals(1, count($subQuery->execute('1', 0)));
    }

    /**
     * Tests behaviour of subQuery class with JUST_EXPLODE query.
     */
    public function testImportSubQueryJustExplode()
    {
        $mockConnection = $this->getMockConnection(0, []);

        $subQuery = new ImportSubQuery(
            $mockConnection,
            'parentId',
            'keyFrom',
            'keyTo',
            'mockClass',
            ImportSubQuery::JUST_EXPLODE,
            ['test' => ImportSubQuery::SELF_ID],
            '~~~'
        );

        $this->assertEquals($subQuery->execute('1~~~2~~~3', 0), [1, 2, 3]);
    }

    /**
     * @param int   $howManyTimes
     * @param array $results
     *
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockConnection($howManyTimes, $results = [])
    {
        $mockStatement = $this->getMockBuilder('Doctrine\DBAL\Statement')
            ->disableOriginalConstructor()
            ->setMethods(['bindValue', 'setFetchMode', 'execute', 'getIterator'])
            ->getMock();
        $mockStatement
            ->expects($this->exactly($howManyTimes))
            ->method('bindValue')
            ->withAnyParameters()
            ->willReturn(null);
        $mockStatement
            ->expects($this->exactly($howManyTimes))
            ->method('setFetchMode')
            ->withAnyParameters()
            ->willReturn(null);
        $mockStatement->expects($this->exactly($howManyTimes))->method('execute');
        $mockStatement
            ->expects($this->exactly($howManyTimes))
            ->method('getIterator')
            ->willReturn(new \ArrayIterator($results));

        $mockConnection = $this->getMockBuilder('Doctrine\DBAL\Connection')
            ->disableOriginalConstructor()
            ->setMethods(['prepare'])
            ->getMock();
        $mockConnection
            ->expects($this->exactly($howManyTimes))
            ->method('prepare')
            ->with('anyquery')
            ->willReturn($mockStatement);

        return $mockConnection;
    }
}
