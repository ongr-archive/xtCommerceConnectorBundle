<?php

/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace ONGR\XtCommerceConnectorBundle\Import;

use Doctrine\DBAL\Statement;
use Doctrine\DBAL\Connection;
use PDO;

/**
 * ImportHelper. As the name suggests, helper functions are being held here.
 */
class ImportHelper
{
    const SELF_ID = '_self_id_';
    const PARENT_ID = '_parent_id_';

    /**
     * Assigns data to object using setters.
     *
     * @param array $in
     * @param mixed $out
     *
     * @return mixed
     */
    public static function assign($in, $out)
    {
        foreach ($in as $column => $value) {
            $setter = 'set' . ucfirst($column);
            if (method_exists($out, $setter)) {
                $out->$setter($value);
            }
        }

        return $out;
    }

    /**
     * Creates prepared statement and executes it.
     *
     * @param Connection $connection SQL connection instance.
     * @param string     $sql        SQL query.
     * @param array      $bindings   SQL parameter bindings ([param_name=>param_value]).
     *
     * @throws \Doctrine\DBAL\DBALException
     *
     * @return Statement
     */
    public static function getStatement($connection, $sql, $bindings)
    {
        $prepared = $connection->prepare($sql);
        foreach ($bindings as $what => $value) {
            $prepared->bindValue($what, $value);
        }
        $prepared->setFetchMode(PDO::FETCH_ASSOC);
        $prepared->execute();

        return $prepared;
    }

    /**
     * Returns array of objects of any kind. If object is not found, an empty array is returned.
     *
     * @param Connection $connection
     * @param int|string $parentId
     * @param array|null $objectIdArray
     * @param string     $objectQuery
     * @param array      $queryParameters
     * @param string     $class
     *
     * @return mixed[]
     */
    public static function getSubObjects($connection, $parentId, $objectIdArray, $objectQuery, $queryParameters, $class)
    {
        $selfKeys = array_keys($queryParameters, self::SELF_ID, true);
        $parentKeys = array_keys($queryParameters, self::PARENT_ID, true);

        // Preparation of query parameters where parameter is the id of the parent object.
        foreach ($parentKeys as $key) {
            $queryParameters[$key] = $parentId;
        }

        if (is_array($objectIdArray)) {
            $retObjects = [];
            foreach ($objectIdArray as $object_id) {
                // Preparation of query parameters where parameter is the id of object acquired from other query.
                foreach ($selfKeys as $key) {
                    $queryParameters[$key] = $object_id;
                }
                $result = self::getSubObject($connection, $objectQuery, $queryParameters, $class);
                if ($result) {
                    $retObjects[$object_id] = $result[0];
                }
            }

            return $retObjects;
        } else {
            return self::getSubObject($connection, $objectQuery, $queryParameters, $class);
        }
    }

    /**
     * Returns array of objects of any kind. If object is not found, an empty array is returned.
     *
     * @param Connection $connection
     * @param string     $objectQuery
     * @param array      $queryParameters
     * @param string     $class
     *
     * @return mixed[]
     *
     * @throws \LogicException
     */
    protected static function getSubObject($connection, $objectQuery, $queryParameters, $class)
    {
        $retObjects = [];

        foreach (self::getStatement(
            $connection,
            $objectQuery,
            $queryParameters
        ) as $sourceObject) {
            if (!class_exists($class)) {
                throw new \LogicException("subQuery instance creation failed: unknown class name {$class}");
            }

            $object = new $class();
            $retObjects[] = self::assign($sourceObject, $object);
        }

        return $retObjects;
    }
}
