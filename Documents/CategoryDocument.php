<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Documents;

use ONGR\ContentBundle\Document\Traits\CategoryTrait;
use ONGR\ElasticsearchBundle\Annotation as ES;
use ONGR\ElasticsearchBundle\Document\DocumentInterface;
use ONGR\ElasticsearchBundle\Document\DocumentTrait;

/**
 * ElasticSearch Category document.
 *
 * @ES\Document
 */
class CategoryDocument implements DocumentInterface
{
    use DocumentTrait;
    use CategoryTrait;
}
