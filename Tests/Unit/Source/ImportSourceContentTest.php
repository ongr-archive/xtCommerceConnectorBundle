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

use ONGR\XtCommerceConnectorBundle\Source\ImportSourceContent;

class ImportSourceContentTest extends CommonSourceTests
{
    /**
     * Test default behaviour of ImportSourceCategory.
     */
    public function testSourceCategoryDefault()
    {
        $sql = file_get_contents('Resources/config/queries/content.sql');

        $mockStatement = $this->getMockStatement();

        $mockConnection = $this->getMockConnection($sql, $mockStatement, ['lang_id', self::DEFAULT_LANG_ID]);

        $mockManager = $this->getMockManager();

        $mockEvent = $this->getMock('ONGR\ConnectionsBundle\Pipeline\Event\SourcePipelineEvent');

        $import = new ImportSourceContent(
            $mockConnection,
            $mockManager,
            self::DEFAULT_REPOSITORY,
            self::DEFAULT_SHOP_ID,
            self::DEFAULT_LANG_ID,
            ['lang_id' => self::DEFAULT_LANG_ID]
        );

        $import->onSource($mockEvent);
    }
}
