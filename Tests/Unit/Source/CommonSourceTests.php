<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit\Source;

/**
 * Class CommonSourceTests.
 */
class CommonSourceTests extends \PHPUnit_Framework_TestCase
{
    const DEFAULT_SHOP_ID = 0;

    const DEFAULT_LANG_ID = 'en';

    const DEFAULT_REPOSITORY = 'TestRepo';

    /**
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockStatement()
    {
        $mockStatement = $this->getMockBuilder('Doctrine\DBAL\Statement')
            ->disableOriginalConstructor()
            ->setMethods(['bindValue', 'setFetchMode', 'execute', 'getIterator'])
            ->getMock();

        $mockStatement->expects($this->once())->method('setFetchMode')->withAnyParameters()->willReturn(null);
        $mockStatement->expects($this->once())->method('execute')->withAnyParameters()->willReturn(null);
        $mockStatement
            ->expects($this->once())
            ->method('getIterator')
            ->withAnyParameters()
            ->willReturn(new \ArrayIterator());

        return $mockStatement;
    }

    /**
     * @param string                                   $sql
     * @param \PHPUnit_Framework_MockObject_MockObject $mockStatement
     * @param array                                    $bindings
     *
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockConnection($sql, $mockStatement, $bindings = null)
    {
        $mockConnection = $this->getMockBuilder('Doctrine\DBAL\Connection')
            ->disableOriginalConstructor()
            ->setMethods(['prepare'])
            ->getMock();
        if ($bindings === null) {
            $mockStatement->expects($this->exactly(2))->method('bindValue')
                ->withConsecutive(
                    ['store_id', self::DEFAULT_SHOP_ID, null ],
                    ['lang_id', self::DEFAULT_LANG_ID, null ]
                )
                ->willReturn(null);
        } else {
            $mockStatement->expects($this->once())->method('bindValue')
                ->withConsecutive($bindings)
                ->willReturn(null);
        }
        $mockConnection->expects($this->once())->method('prepare')->with($sql)->willReturn($mockStatement);

        return $mockConnection;
    }

    /**
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockManager()
    {
        $mockManager = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Manager')
            ->disableOriginalConstructor()
            ->setMethods(['getRepository'])
            ->getMock();

        $mockRepository = $this->getMockBuilder('ONGR\ElasticsearchBundle\ORM\Repository')
            ->disableOriginalConstructor()
            ->getMock();

        $mockManager
            ->expects($this->once())
            ->method('getRepository')
            ->with(self::DEFAULT_REPOSITORY)
            ->willReturn($mockRepository);

        return $mockManager;
    }
}
