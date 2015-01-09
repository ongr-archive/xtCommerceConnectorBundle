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
 * Tests CategoryDocument getters/setters.
 */
class CategoryDocumentTest extends AbstractGetterSetterTest
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
            ['sort'],
            ['active'],
            ['parentId'],
            ['level'],
            ['title'],
            ['hidden'],
            ['left'],
            ['right'],
            ['expanded'],
            ['current'],
            ['breadcrumbs'],
            ['children'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function getClassName()
    {
        return 'ONGR\XtCommerceConnectorBundle\Document\CategoryDocument';
    }
}
