<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit\Modifier;

use ONGR\XtCommerceConnectorBundle\Modifier\ImportModifier;

class ImportModifierTest extends \PHPUnit_Framework_TestCase
{
    /**
     * Tests behaviour of modifier when not an ImportItem is given.
     */
    public function testImportModifierBadImportItem()
    {
        $mod = new ImportModifier();
        $mockItem = $this->getMockBuilder('ONGR\ConnectionsBundle\Pipeline\Item\AbstractImportItem')
            ->disableOriginalConstructor()
            ->setMethods(['getDocument', 'setDocument'])
            ->getMockForAbstractClass();
        $mockItem->expects($this->never())->method('setDocument');
        $mockItem->expects($this->never())->method('getDocument');

        $mod->modify($mockItem);
    }

    /**
     * Tests behaviour of modifier when an ImportItem is given.
     */
    public function testImportModifierGoodImportItem()
    {
        $mod = new ImportModifier();

        $mockDocument = $this->getMockForAbstractClass('ONGR\ElasticsearchBundle\Document\DocumentInterface');

        $mockItem = $this
            ->getMockBuilder('ONGR\ConnectionsBundle\Pipeline\Item\ImportItem')
            ->setMethods(['getDocument', 'setDocument'])
            ->disableOriginalConstructor()
            ->getMockForAbstractClass();
        $mockItem->expects($this->once())->method('setDocument');
        $mockItem->expects($this->once())->method('getDocument')->willReturn($mockDocument);

        $mod->modify($mockItem);
    }
}
