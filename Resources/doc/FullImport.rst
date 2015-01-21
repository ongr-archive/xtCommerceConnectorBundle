Full import functionality and configuration
===========================================

XtCommerceConnectorBundle uses ConnectionsBundle pipeline functionality for full import of data from xtCommerce database.

Three events are defined and used by the full import functionality:
    - Source
    - Modifier
    - Consume
    - Finish


Source event
------------

Source event populates the pipeline sources with data. It uses queries defined in Resources/config/queries.xml.

Example query defined in queries.xml:

.. code-block:: xml

         <parameter key="query.products">
            <![CDATA[
            SELECT

            products.products_id as id,
            products_name as title,
            products_short_description as description,
            products_description as description,
            products_ean as sku,
            products_price as price,
            description.language_code as lang_id,
            products_url,
            GROUP_CONCAT(DISTINCT seo.url_text SEPARATOR '|') as seo_urls,
            products_store_id,
            GROUP_CONCAT(DISTINCT prod_cat.categories_id SEPARATOR '|') as categories,
            CONCAT(COALESCE(prod.products_image,''),'|' , GROUP_CONCAT(DISTINCT images.file SEPARATOR '|')) as images

            FROM xt_products as products

            LEFT JOIN xt_products_to_categories as prod_cat ON prod.products_id = prod_cat.products_id

            LEFT JOIN xt_media_link as medialink ON products.products_id = medialink.link_id AND medialink.type = 'images'

            LEFT JOIN xt_media as images ON medialink.m_id = images.id

            LEFT JOIN xt_products_description as description ON products.products_id = description.products_id

            LEFT JOIN xt_seo_url as seo ON seo.link_id = products.products_id AND link_type=1 AND seo.language_code = description.language_code

            WHERE description.language_code = :lang_id AND products_store_id = :store_id

            Group by description.language_code, prod.products_id, products_store_id

            ]]>
        </parameter>


Please note the parameters `:lang_id` and `:store_id`. These parameters are configured in service as shopId and langId.
Parameters may be overriden by defining defaultBindings in the service definition.

Example service configuration:

.. code-block:: yml

    ongr_xt_commerce_connector.import.source.product:
           class: %ongr_xt_commerce_connector.importsource.class%
           parent: ongr_connections.import.source
           arguments:
               - @doctrine.dbal.default_connection              # Connection to the database.
               - @es.manager                                    # Elasticsearch manager.
               - [@ongr_xt_commerce_connector.image_subquery]   # Subqueries - see below.
               - %query.products%                               # Query defined in queries.xml.
               - ONGRXtCommerceConnectorBundle:ProductDocument  # Elasticsearch document defined in Document/ .
               - %default_shop_id%                              # Shop identifier.
               - %default_lang_id%                              # Language identifier.
               - { lang_id: en, my_parameter: asdfjkl }         # defaultBindings override. Your query will have only lang_id and my_parameter parameters available.
           tags:
               - { name: kernel.event_listener, event: ongr.pipeline.import.default.source, method: onSource } # Register service as listener.


Please note that product needs to have full information on (multiple) images and categories, so our source would need to execute a separate query (queries) for each product.
These subqueries are defined as services, e.g.

.. code-block:: yml

    ongr_xt_commerce_connector.image_subquery:
        class: %ongr_xt_commerce_connector.subquery.class%
        arguments:
            - @doctrine.dbal.default_connection                     # Connection to the database
            - id                                                    # Parents' field containing "parent" object id, as defined in "parent" query.
            - null                                                  # Parents' field containing the list of child ids, null if not available (or join is used)
            - images                                                # Parents' field into which the subquery result should be put.
            - ONGR\XtCommerceConnectorBundle\Document\ImageObject   # Document to return, defined in Document/ .
            - %subquery.images%                                     # The SQL sub-query itself.
            - { product_id: %importSubQuery.parent_id.value% }      # SQL sub-query parameters. In this particular case we have referred to a constant defined in constants.xml.


Refer to `Subqueries <subqueries.rst>`_ for more information about subquery usage.
