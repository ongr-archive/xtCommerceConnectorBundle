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

use Doctrine\DBAL\Connection;

/**
 * Subqueries for import object.
 */
class ImportSubQuery
{
    const SELF_ID = '_self_id_';
    const PARENT_ID = '_parent_id_';

    const JUST_EXPLODE = '_just_explode_';

    /**
     * @var string
     */
    private $keyFrom;

    /**
     * @var string
     */
    private $keyTo;

    /**
     * @var string
     */
    private $parentIdFrom;

    /**
     * @var string
     */
    private $classTo;

    /**
     * @var string
     */
    private $query;

    /**
     * @var string
     */
    private $separator;

    /**
     * @var array
     */
    private $queryParameters;

    /**
     * @var Connection
     */
    private $connection;

    /**
     * @param Connection $connection
     * @param string     $parentIdFrom
     * @param string     $keyFrom
     * @param string     $keyTo
     * @param string     $classTo
     * @param string     $query
     * @param array      $queryParameters
     * @param string     $separator
     */
    public function __construct(
        $connection,
        $parentIdFrom,
        $keyFrom,
        $keyTo,
        $classTo,
        $query,
        $queryParameters,
        $separator = '|'
    ) {
        $this->classTo = $classTo;
        $this->connection = $connection;
        $this->parentIdFrom = $parentIdFrom;
        $this->keyFrom = $keyFrom;
        $this->keyTo = $keyTo;
        $this->query = $query;
        $this->queryParameters = $queryParameters;
        $this->separator = $separator;
    }

    /**
     * Returns object array from subquery.
     *
     * @param array|null $idList
     * @param int|string $parentId
     *
     * @return mixed[]
     */
    public function execute($idList, $parentId)
    {
        if ($this->query === self::JUST_EXPLODE) {
            return explode($this->separator, $idList);
        } else {
            if ($idList !== null) {
                $idList = explode($this->separator, $idList);
            }

            return $this->getSubObjects(
                $parentId,
                $idList,
                $this->query,
                $this->queryParameters,
                $this->classTo
            );
        }
    }

    /**
     * Wrapper and additional logic pre-processing for getSubResults.
     *
     * @param int|string $parentId
     * @param array|null $objectIdArray
     * @param string     $objectQuery
     * @param array      $queryParameters
     * @param string     $class
     *
     * @return mixed[]
     */
    protected function getSubObjects($parentId, $objectIdArray, $objectQuery, $queryParameters, $class)
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
                $result = self::getSubResults($objectQuery, $queryParameters, $class);
                if (count($result) > 0) {
                    $retObjects[$object_id] = $result[0];
                }
            }

            return $retObjects;
        } else {
            return self::getSubResults($objectQuery, $queryParameters, $class);
        }
    }

    /**
     * Returns array of objects of any kind. If object is not found, an empty array is returned.
     *
     * @param string $objectQuery
     * @param array  $queryParameters
     * @param string $class
     *
     * @return mixed[]
     *
     * @throws \LogicException
     */
    protected function getSubResults($objectQuery, $queryParameters, $class)
    {
        $retObjects = [];

        foreach (ImportHelper::getStatement(
            $this->connection,
            $objectQuery,
            $queryParameters
        ) as $sourceObject) {
            if (!class_exists($class)) {
                throw new \LogicException("subQuery result object instance creation failed: unknown class {$class}");
            }

            $object = new $class();
            $retObjects[] = ImportHelper::assign($sourceObject, $object);
        }

        return $retObjects;
    }

    /**
     * @return string
     */
    public function getClassTo()
    {
        return $this->classTo;
    }

    /**
     * @param string $classTo
     */
    public function setClassTo($classTo)
    {
        $this->classTo = $classTo;
    }

    /**
     * @return Connection
     */
    public function getConnection()
    {
        return $this->connection;
    }

    /**
     * @param Connection $connection
     */
    public function setConnection($connection)
    {
        $this->connection = $connection;
    }

    /**
     * @return string
     */
    public function getKeyFrom()
    {
        return $this->keyFrom;
    }

    /**
     * @param string $keyFrom
     */
    public function setKeyFrom($keyFrom)
    {
        $this->keyFrom = $keyFrom;
    }

    /**
     * @return string
     */
    public function getKeyTo()
    {
        return $this->keyTo;
    }

    /**
     * @param string $keyTo
     */
    public function setKeyTo($keyTo)
    {
        $this->keyTo = $keyTo;
    }

    /**
     * @return string
     */
    public function getQuery()
    {
        return $this->query;
    }

    /**
     * @param string $query
     */
    public function setQuery($query)
    {
        $this->query = $query;
    }

    /**
     * @return array
     */
    public function getQueryParameters()
    {
        return $this->queryParameters;
    }

    /**
     * @param array $queryParameters
     */
    public function setQueryParameters($queryParameters)
    {
        $this->queryParameters = $queryParameters;
    }

    /**
     * @return string
     */
    public function getSeparator()
    {
        return $this->separator;
    }

    /**
     * @param string $separator
     */
    public function setSeparator($separator)
    {
        $this->separator = $separator;
    }

    /**
     * @return string
     */
    public function getParentIdFrom()
    {
        return $this->parentIdFrom;
    }

    /**
     * @param string $parentIdFrom
     */
    public function setParentIdFrom($parentIdFrom)
    {
        $this->parentIdFrom = $parentIdFrom;
    }
}
