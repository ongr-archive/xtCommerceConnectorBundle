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

use ONGR\XtCommerceConnectorBundle\Source\ImportSource;

class ImportSourceTest extends CommonSourceTests
{
    /**
     * Test default behaviour of ImportSource.
     */
    public function testImportSourceDefault()
    {
        $sql = 'test';

        $mockStatement = $this->getMockStatement();

        $mockConnection = $this->getMockConnection($sql, $mockStatement, null);

        $mockManager = $this->getMockManager();

        $mockEvent = $this->getMock('ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent');

        $import = new ImportSource(
            $mockConnection,
            $mockManager,
            [],
            $sql,
            self::DEFAULT_REPOSITORY,
            self::DEFAULT_SHOP_ID,
            self::DEFAULT_LANG_ID
        );

        $import->onSource($mockEvent);
    }

    /**
     * Test default behaviour of ImportSource with other binding.
     */
    public function testImportSourceOtherBindings()
    {
        $sql = 'test';

        $mockStatement = $this->getMockStatement();

        $mockConnection = $this->getMockConnection($sql, $mockStatement, ['this', 'that', null ]);

        $mockManager = $this->getMockManager();

        $mockEvent = $this->getMock('ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent');

        $import = new ImportSource(
            $mockConnection,
            $mockManager,
            [],
            $sql,
            self::DEFAULT_REPOSITORY,
            self::DEFAULT_SHOP_ID,
            self::DEFAULT_LANG_ID,
            ['this' => 'that']
        );

        $import->onSource($mockEvent);
    }
}
