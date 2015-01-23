Semiautomated xt:Commerce installation
======================================

This bundle provides a shell script to quickly and easily install a demo version of xt:Commerce.
It installs xt:Commerce to the directory of your choice and sets up a default (demo) data in a database of your choice.

Prerequisites
-------------

- Installation zip of xt:Commerce.
- A valid xt:Commerce license.

You can get a license by registering at `xt:Commerce homepage <http://www.xt-commerce.com/>`_.

Please note that while you get a download link with your license file, the link provided in the email is not pointing
to the most recent (and supported) version of xt:Commerce. So don't press "Download" button too hastily, check if there are links to a newer version.

Installation
------------

There are two ways of using installation script located in this bundles' Install folder. Method 2 is preferred.

Method 1:
~~~~~~~~~

Running installation script interactively by pressing ``I`` when presented with a prompt:

::

    Press [I] for interactive setup, any other key - setup with values defined in this script, [CTRL-C] to exit

Method 2:
~~~~~~~~~

Configuring installation script in your favourite editor. Just open up ``Install/install.sh`` and change the values of the variables below
``# CONFIGURE DEFAULT VALUES HERE`` comment.

Choices you might have to make during the installation process
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are some choices you might have to make regardless of the installation method you chose:

If previous installation failed and was aborted, during unzipping step you might be asked whether you want to overwrite files. Any choice is good, although choosing ``[N]one`` makes unzipping much faster.

If a database already exists, you will be asked to choose between these options:

``Do you want to [D]rop and recreate it, [I]mport data, [S]kip import of the data (default: [S])``

Importing data to an existing xt:Commerce database can and will fail. If you are not sure, it is safest to use a default value.

If destination directory already exists, you will be asked to choose between these options:

``Do you want to [D]elete and recreate it, try to [M]ove into it anyway, [S]kip copy of the data (default: [S])``

Moving into a directory with xt:Commerce already installed in it can and will fail. If you are not sure, default value is the safest.

Troubleshooting
~~~~~~~~~~~~~~~

- "Failed: Unzipping installation package"
    - Check if location of xt:Commerce installation zip is set correctly.
    - Check if ``Install/package/`` is writeable.
    - Check if there is enough free disk space (~120M) for extracted files.
    - "Failed: Copying config skeleton"
    - Check if ``Install/package/skel/conf`` exists and reinstall bundle if it does not.
- "Failed: Copying license"
    - Check if location of xt:Commerce license.txt file is set correctly.
- "Failed: Mangling config"
    - This shouldn't happen, ever. Check if Install/package/skel/conf/config.php exists and reinstall the bundle if it does not.
- "Failed: Creating database..."
    - The target database does not exist and the script has failed creating it. Check if mysql username and password are correct.
    - Check if mysql user you provided has CREATE DATABASE privilege.
    - Create the database yourself.
- "Failed: Dropping database"
    - The target database existed and you chose to drop and recreate it. But does the user you provided have DROP DATABASE privilege?
    - Drop the database yourself.
- "Failed: Creating database" - after you chose to drop and recreate target database
    - Does the user you provided have CREATE DATABASE privilege?
- "Failed: Moving to installation directory"
    - Check if you have write permissions on the installation destination directory. ``sudo ./install.sh`` if necessary.
- "Failed: Removing temporary files"
    - This should never happen. If it did, check if Install/package/extracted write permissions didn't somehow change.
- "Failed: Removing installation directories xtInstaller / xtUpdater / xtWizard"
    - Check if you have write permissions on the installation destination directory. ``sudo ./install.sh`` if necessary.
