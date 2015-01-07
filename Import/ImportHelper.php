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

}
