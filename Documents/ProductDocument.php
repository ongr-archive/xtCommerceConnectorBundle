<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtConnectorBundle\Documents;

use ONGR\ContentBundle\Document\Traits\ProductTrait;
use ONGR\ElasticsearchBundle\Document\DocumentTrait;

/**
 * Product document.
 *
 * @ES\Document
 */
class ProductDocument
{
    use DocumentTrait;
    use ProductTrait;

    /**
     * @var ImageObject[]
     *
     * @ES\Property(name="images", type="object", objectName="XtCommerceConnectorBundle:ImageObject", multiple=true)
     */
    private $images;

    /**
     * @var CategoryObject[]
     *
     * @ES\Property(name="categories", type="object", objectName="XtCommerceConnectorBundle:CategoryObject", multiple=true)
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
