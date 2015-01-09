<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Tests\Unit;

use ONGR\ConnectionsBundle\Tests\Unit\Entity\AbstractEntityTest;

/**
 * Abstract entity test for setters and getters.
 */
abstract class AbstractGetterSetterTest extends AbstractEntityTest
{
    /**
     * Tests field setter and getter. Disables original constructor.
     *
     * @param string      $field
     * @param null|string $type
     * @param null|string $addMethod
     * @param null|string $removeMethod
     *
     * @throws \Exception When unknown field type given
     *
     * @dataProvider getFieldsData()
     */
    public function testSetterGetter($field, $type = null, $addMethod = null, $removeMethod = null)
    {
        $objectClass = $this->getClassName();

        $setter = 'set' . ucfirst($field);
        $getter = 'get' . ucfirst($field);

        if ($type === 'boolean') {
            $getter = 'is' . ucfirst($field);
        }

        $stub = $this
            ->getMockBuilder($objectClass)
            ->disableOriginalConstructor()
            ->getMockForAbstractClass($objectClass);

        if ($addMethod) {
            $this->assertTrue(method_exists($stub, $addMethod), "Method ${addMethod}() not found!");
            $this->assertTrue(method_exists($stub, $getter), "Method ${getter}() not found!");
            $this->assertTrue(method_exists($stub, $removeMethod), "Method ${removeMethod}() not found!");
        } else {
            $this->assertTrue(method_exists($stub, $setter), "Method ${getter}() not found!");
            $this->assertTrue(method_exists($stub, $getter), "Method ${setter}() not found!");
        }

        if ($type === null || $type == 'boolean') {
            $rand = rand(0, 9999);
            $stub->$setter($rand);
            $this->assertEquals($rand, $stub->$getter());
        } elseif ($type == '\DateTime') {
            $dateTime = new \DateTime();
            $stub->$setter($dateTime);
            $this->assertEquals($dateTime, $stub->$getter());
        } elseif (class_exists($type)) {
            $childObject = $this->getMockBuilder($type)->disableOriginalConstructor()->getMockForAbstractClass($type);
            $hash = spl_object_hash($childObject);

            if ($addMethod) {
                $stub->$addMethod($childObject);

                foreach ($stub->$getter() as $collectionObject) {
                    $this->assertEquals($hash, spl_object_hash($collectionObject));
                }

                $stub->$removeMethod($childObject);
                $this->assertEquals(0, count($stub->$getter()));
            }

            $stub->$setter($childObject);
            $this->assertEquals($hash, spl_object_hash($stub->$getter()));
        } else {
            throw new \Exception("Unknown field type '{$type}'.");
        }
    }
}
