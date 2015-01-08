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

use ONGR\ContentBundle\Document\Traits\ProductTrait;
use ONGR\ElasticsearchBundle\Document\DocumentInterface;
use ONGR\ElasticsearchBundle\Document\DocumentTrait;
use ONGR\ElasticsearchBundle\Annotation as ES;

/**
 * Product document.
 *
 * @codeCoverageIgnore
 * @ES\Document
 */
class ProductDocument implements DocumentInterface
{
    use DocumentTrait;
    use ProductTrait;

    /**
     * @var ImageObject[]
     *
     * @ES\Property(name="images", type="object", objectName="ONGRXtCommerceConnectorBundle:ImageObject", multiple=true)
     */
    private $images;

    /**
     * @var CategoryObject[]
     *
     * @ES\Property(name="categories", type="object",
     * objectName="ONGRXtCommerceConnectorBundle:CategoryObject", multiple=true)
     */
    private $categories;

    /**
     * @return CategoryObject[]
     */
    public function getCategories()
    {
        return $this->categories;
    }

    /**
     * @param CategoryObject[] $categories
     */
    public function setCategories($categories)
    {
        $this->categories = $categories;
    }

    /**
     * @return ImageObject[]
     */
    public function getImages()
    {
        return $this->images;
    }

    /**
     * @param ImageObject[] $images
     */
    public function setImages($images)
    {
        $this->images = $images;
    }
}
