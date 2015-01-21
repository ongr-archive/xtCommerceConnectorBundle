Subqueries
----------

Subqueries allow getting related data from database.

Example:

Your source query returns something akin to this from the database:

..

    {
        "id": 1,
        "title": "test product",
        "seo_urls": "test|discounts/test",
        "some_entity_ids": "5|8|10",
    }

We will refer to this object as the "parent".

Suppose our end-document should have a structure akin to this:

..

    {
        "id": int,
        "title": string,
        "categories": Category[],
        "images": Image[],
        "seo_urls": string[],
        "some_entities": Entity[],
    }

As you can see, there are some things that are in database, but we can't get them from the database with a single query (neither more `GROUP_CONCAT`, nor multiple rows in source query are acceptable).

This is where subqueries come in handy.

First of all, we define SQL queries for images, categories and some_entities:

.. code-block: sql

    SELECT
        image.id as id, image.title as title, image.file as file
    FROM product_table
    LEFT JOIN product_image_relation AS image_relation ON product_table.id = product_image_relation.product_id
    LEFT JOIN image_table AS image ON product_image_relation.image_id = image_table.id
    WHERE product_table.id = :product_id


