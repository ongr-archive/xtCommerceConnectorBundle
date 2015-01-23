Howto: installation and configuration
=====================================

This document will help you install xt:Commerce and configure it as a data source for ONGR.

Installation
------------

See `Installation <Howto/installation.rst>`_ for more information on using installation script provided with this bundle.

Configuration
-------------

This package enables you to have both full and sync imports and is mostly preconfigured.

You will have to specify your database and Elasticsearch configuration, of course. E.g.:

.. code-block:: yaml

    # Doctrine Configuration
    doctrine:
        dbal:
            driver:   %database_driver%     # Database type.
            host:     %database_host%       # Database host.
            port:     %database_port%       # Database port.
            dbname:   %database_name%       # Database name.
            user:     %database_user%       # Database username.
            password: %database_password%   # Database password.
            charset:  UTF8
            logging: false
            profiling: false
            server_version: 5.0
        orm:
            auto_mapping: false             # XtCommerceConnectorBundle does not use Doctrine ORM.

    ongr_elasticsearch:
        connections:
            default:
                hosts:
                    - { host: 127.0.0.1:9200 } # Your Elasticsearch host.
                index_name: your_index         # Your Elasticsearch index which will contain the documents imported from xt:Commerce.
        managers:
            default:
                connection: default
                mappings:
                    - ONGRXtCommerceConnectorBundle # Documents used by this bundle.

It is advisable to double check if the default values really are good for you:

In ``Resources/config/services.yml``

.. code-block:: yaml

    default_shop_id: 1
    default_lang_id: en

Also note that by default all pipeline events are listening on the **default** target.
If you wish to separate the xt:Commerce imports, e.g. you have different e-Commerce software and would like to import it one-by-one,
change the event names from ``ongr.pipeline.import.default.``, ``ongr.pipeline.data_sync.default`` and ``ongr.pipeline.sync.execute.default`` to
something more to your taste, e.g. ``ongr.pipeline.import.xtcommerce.``, ``ongr.pipeline.data_sync.xtcommerce`` and ``ongr.pipeline.sync.execute.xtcommerce``
in ``Resources/config/services.yml`` and ``Resources/config/relations.yml`` files.

Advanced stuff and further reading
----------------------------------

If you wish to further extend the functionality of this bundle, e.g. you need another objects to be imported to Elasticsearch, you can refer to
`Full import documentation <Internals/FullImport.rst>`_ and/or `Sync import documentation <Internals/syncimport.rst>`_ to learn how to configure
import sources, modifiers, consumers and finishers.

You might also read about how Elasticsearch documents are created, parsed and configured in `ElasticsearchBundles' documentation <http://ongr.readthedocs.org/en/latest/components/ElasticsearchBundle/Resources/doc/index.html>`_.

If you wish to know more about other customizations possible with ONGR, you might be interested in `Customization documentation <http://ongr.readthedocs.org/en/latest/customizations.html>`_.
