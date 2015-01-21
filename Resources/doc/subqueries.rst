Subqueries
==========

Subqueries allow getting related data from database.

Example
-------

Your source returns something akin to this from the database:

::

    {
        "id": 1,
        "title": "test product",
        "seo_urls": "test|discounts/test",
        "entity_ids": "5|8|10",
    }


NB: We will refer to this object as the "parent".

Suppose our end-document should have a structure akin to this:

::

    {
        "id": int,
        "title": string,
        "images": Image[],
        "seo_urls": string[],
        "entities": Entity[],
    }


As you can see, there are some things in the end-document (that are in database),
but we can't get them from the database with a single query (neither more ``GROUP_CONCAT``, nor multiple rows in source query are acceptable).

This is where subqueries come in handy.


Configuring subquery queries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

First of all, we define SQL queries for images and some_entities:

.. code-block:: sql

    SELECT
        image.id as id, image.title as title, image.file as file
    FROM product_table
    LEFT JOIN product_image_relation AS image_relation ON product_table.id = product_image_relation.product_id
    LEFT JOIN image_table AS image ON product_image_relation.image_id = image_table.id
    WHERE product_table.id = :product_id


This one's for images. Let's say that we have put it in a symfony xml configuration file as a parameter called ``image.subquery``

.. code-block:: sql

    SELECT
        id, title
    FROM some_entity_table
    WHERE id = :entity_id


This one's for some (mysterious) entities. Let's say we have put it in the same xml configuration file as a parameter called ``entity.subquery``


Configuring subquery services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Then we define subqueries as services. There are a few nuances to this thing.

.. code-block:: yaml

    my.image_subquery:
        class: %subquery.class%                                 # Subquery class.
        arguments:
            - @doctrine.dbal.default_connection                 # Database connection.
            - id                                                # Field in parent object containing parents' id
            - null                                              # Parents' field containing the list of child ids, null if not available (or join is used)
            - images                                            # Parents' field into which the subquery result should be put.
            - MyBundle\Document\ImageObject                     # Document to return.
            - %image.subquery%                                  # SQL query to use.
            - { product_id: %ImportSubQuery.parent_id.value% }  # SQL query parameters to use.


This would be the definition of image subquery.

The last line in this definition might have caught your eye - what is ``ImportSubQuery.parent_id.value``?
``ImportSubQuery.parent_id.value`` is a value of a constant (by default defined in ``constants.xml`` configuration file), which tells the subquery to put parent objects' id as a value.

There are other constants as well, which we will cover later on.

.. code-block:: yaml

    my.entities_subquery:
        class: %subquery.class%                                 # Subquery class.
        arguments:
            - @doctrine.dbal.default_connection                 # Database connection.
            - id                                                # Field in parent object containing parents' id. We don't really need it here.
            - some_entity_ids                                   # Parents' field containing the list of child ids.
            - entities                                          # Parents' field into which the subquery result should be put.
            - MyBundle\Document\MysteriousEntityObject          # Document to return.
            - %entity.subquery%                                 # SQL query to use.
            - { entity_id: %ImportSubQuery.self_id.value% }     # SQL query parameters to use.
            - "|"                                               # Separator to use.


This would be the definition of an (mysterious) entity subquery.

Now the last two lines are, again, intriguing - what is the significance of ``"|"`` and what exactly is ``ImportSubQuery.self_id.value``?
``ImportSubQuery.self_id.value`` is a value of a constant (by default defined in `constants.xml` configuration file), which tells the subquery to put desired objects' id as a value.
Subquery mechanism gets this value by exploding ``some_entity_ids``' value of parent object using separator ``"|"``.
This is seriously suboptimal, since you run queries for each and every child id the parent object provides.


.. code-block:: yaml

    my.seo_urls_subquery:
        class: %subquery.class%                                 # Subquery class.
        arguments:
            - @doctrine.dbal.default_connection                 # Database connection.
            - id                                                # Field in parent object containing parents' id. We don't really need it here.
            - seo_urls                                          # Parents' field containing the list of child ids.
            - seo_urls                                          # Parents' field into which the subquery result should be put.
            - null                                              # We need a simple string array.
            - %ImportSubQuery.just_explode.value%               # That is interesting... read on.
            - []                                                # SQL query parameters to use.
            - "|"                                               # Separator to use.


Now the third line from the end is different. As you have probably already guessed, ``ImportSubQuery.just_explode.value`` is another constant, this time used instead of a query.
It tells the subquery mechanism not to run any queries against the database, but instead just explode the input

Configuring source to use subqueries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The last step left is to configure your source to use the subqueries defined. That is very simple:

.. code-block:: yaml

    my.import.source.product:
           class: %my.importsource.class%                                               # Importsource class.
           parent: ongr_connections.import.source                                       # Base class.
           arguments:
               - @doctrine.dbal.default_connection                                      # Database connection.
               - @es.manager                                                            # Elasticsearch manager.
               - [ @my.image_subquery, @my.entities_subquery, @my.seo_urls_subquery ]   # Your subqueries.
               - %my.product.query%                                                     # Your main (parent) query.
               - MyBundle:ProductDocument                                               # Document to return.
               - %default_shop_id%                                                      # Shop identifier.
               - %default_lang_id%                                                      # Language identifier.
           tags:
               - { name: kernel.event_listener, event: ongr.pipeline.import.default.source, method: onSource } # Register this service as pipeline source event listener


Refer to `ImportSource <importsource.rst>`_ for more information about ImportSource usage.
