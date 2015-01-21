ImportSource
============

ImportSource is a rather generic class used to get data from database. It can be used both in full import and sync import.

It is configured as follows:

.. code-block:: yaml

    my.import.source.product:
           class: %my.importsource.class%           # ImportSource class.
           parent: ongr_connections.import.source   # Base class.
           arguments:
               - @doctrine.dbal.default_connection  # Database connection.
               - @es.manager                        # Elasticsearch manager.
               - [@my.subquery]                     # Array of relevant subqueries.
               - %query.products%                   # SQL query.
               - MyBundle:MyDocument                # Desired document.
               - %default_shop_id%                  # Shop id.
               - %default_lang_id%                  # Language id.
               - [ ]                                # Optional overriding sql parameters.

Remember to register your ImportSource service as a pipeline source event listener!
