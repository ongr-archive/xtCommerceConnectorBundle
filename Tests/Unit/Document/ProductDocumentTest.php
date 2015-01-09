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
 * Tests ProductDocument getters & setters.
 */
class ProductDocumentTest extends AbstractGetterSetterTest
{
    /**
     * {@inheritdoc}
     */
    public function getFieldsData()
    {
        return [
            ['images'],
            ['categories'],
            ['id'],
            ['score'],
            ['parent'],
            ['ttl'],
            ['highlight', 'ONGR\ElasticsearchBundle\Result\DocumentHighlight'],
            ['title'],
            ['description'],
            ['longDescription'],
            ['sku'],
            ['price'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getClassName()
    {
        return 'ONGR\XtCommerceConnectorBundle\Document\ProductDocument';
    }
}
