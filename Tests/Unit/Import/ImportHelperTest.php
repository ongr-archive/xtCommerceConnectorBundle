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

use ONGR\XtCommerceConnectorBundle\Import\ImportHelper;

class ImportHelperTest extends \PHPUnit_Framework_TestCase
{
    /**
     * Tests assign logic of ImportHelper static class.
     */
    public function testImportHelperAssign()
    {
        $mockObject = $this
            ->getMock('ONGR\XtCommerceConnectorBundle\Documents\ImageDocument', ['setTitle', 'setDescription']);
        $mockObject->expects($this->once())->method('setTitle')->with('Title')->willReturn(null);
        $mockObject->expects($this->once())->method('setDescription')->with('description')->willReturn(null);

        $assignedObject = ImportHelper::assign(['Title' => 'Title', 'Description' => 'description'], $mockObject);

        $this->assertEquals($assignedObject, $mockObject);
    }

    /**
     * Tests getStatement logic of ImportHelper static class.
     */
    public function testImportHelperGetStatement()
    {
        $testParameters = [ 'parameterA' => 'valueA', 'parameterB' => 'valueB' ];
        $mockStatement = $this->getMockBuilder('Doctrine\DBAL\Statement')
            ->disableOriginalConstructor()
            ->setMethods(['bindValue', 'setFetchMode', 'execute'])
            ->getMock();
        $mockStatement->expects($this->exactly(2))->method('bindValue')->withAnyParameters()->willReturn(null);
        $mockStatement->expects($this->once())->method('setFetchMode')->withAnyParameters()->willReturn(null);
        $mockStatement->expects($this->once())->method('execute');

        $mockConnection = $this->getMockBuilder('Doctrine\DBAL\Connection')
            ->disableOriginalConstructor()
            ->setMethods(['prepare'])
            ->getMock();
        $mockConnection->expects($this->once())->method('prepare')->with('Test')->willReturn($mockStatement);
        $out = ImportHelper::getStatement($mockConnection, 'Test', $testParameters);

        $this->assertEquals($out, $mockStatement);
    }
}
