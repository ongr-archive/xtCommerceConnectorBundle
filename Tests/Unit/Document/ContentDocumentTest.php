<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit\Document;

use ONGR\XtCommerceConnectorBundle\Tests\Unit\AbstractGetterSetterTest;

/**
 * Tests ContentDocument getters/setters.
 */
class ContentDocumentTest extends AbstractGetterSetterTest
{
    /**
     * {@inheritdoc}
     */
    public function getFieldsData()
    {
        return [
            ['id'],
            ['score'],
            ['parent'],
            ['ttl'],
            ['highlight', 'ONGR\ElasticsearchBundle\Result\DocumentHighlight'],
            ['slug'],
            ['title'],
            ['content'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getClassName()
    {
        return 'ONGR\XtCommerceConnectorBundle\Document\ContentDocument';
    }
}
