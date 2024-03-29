<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Document;

use ONGR\ContentBundle\Document\Traits\ContentTrait;
use ONGR\ElasticsearchBundle\Document\DocumentInterface;
use ONGR\ElasticsearchBundle\Document\DocumentTrait;
use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * Content Document.
 *
 * @ES\Document
 */
class ContentDocument implements DocumentInterface
{
    use DocumentTrait;
    use ContentTrait;
}
