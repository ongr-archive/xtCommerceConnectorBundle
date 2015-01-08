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

use ONGR\XtCommerceConnectorBundle\Source\ImportSourceProduct;

class ImportSourceProductTest extends \PHPUnit_Framework_TestCase
{
    /**
     * Test default behaviour of ImportSourceCategory.
     */
    public function testSourceCategoryDefault()
    {
        $mockStatement = $this->getMockStatement();

        $mockConnection = $this->getMockConnection($mockStatement);

        $mockManager = $this->getMockManager();

        $mockEvent = $this->getMock('ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent');

        $import = new ImportSourceProduct(
            $mockConnection,
            $mockManager,
            'TestRepo',
            0,
            'en'
        );

        $import->onSource($mockEvent);
    }

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
     * @param \PHPUnit_Framework_MockObject_MockObject $mockStatement
     *
     * @return \PHPUnit_Framework_MockObject_MockObject
     */
    protected function getMockConnection($mockStatement)
    {
        $mockConnection = $this->getMockBuilder('Doctrine\DBAL\Connection')
            ->disableOriginalConstructor()
            ->setMethods(['prepare'])
            ->getMock();
        $mockStatement->expects($this->exactly(2))->method('bindValue')
             ->withConsecutive(
                 ['store_id', '0', null ],
                 ['lang_id', 'en', null ]
             )
             ->willReturn(null);
        $mockConnection->expects($this->once())->method('prepare')->withConsecutive(
            [file_get_contents('Resources/config/queries/products.sql')],
            [file_get_contents('Resources/config/queries/subquery_images.sql')],
            [file_get_contents('Resources/config/queries/subquery_categories.sql')]
        )->willReturn($mockStatement);

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
            ->with('TestRepo')
            ->willReturn($mockRepository);

        return $mockManager;
    }
}
