#!/bin/bash

##################################
# XtCommerce installation script #
##################################

# CONFIGURE DEFAULT VALUES HERE

SOURCE_ZIP_LOCATION="package/xtcommerce.zip"
LICENSE_LOCATION="package/license.txt"
INSTALLATION_LOCATION="/var/www/xtCommerce"

MYSQL_SERVER="localhost"
MYSQL_DATABASE="xtCommerce"
MYSQL_USERNAME="root"
MYSQL_PASSWORD="root"
DB_PREFIX="xt"

DEBUG_ADDRESS="me@home.com"

# IT IS NOT RECOMMENDED TO CHANGE ANYTHING BELOW THIS LINE

function check_outcome()
{
    if [[ $? -ne 0 ]]
    then
        echo "Failed: $1"
        exit 1
    else
        echo "Success: $1"
    fi
}

function interactive_setup
{
    echo "*** Installation settings"
    read -r -p "Source zip location [$SOURCE_ZIP_LOCATION]:" IN
    if [[ $IN -ne "" ]]
    then
        SOURCE_ZIP_LOCATION=$IN
    fi

    read -r -p "License file location [$LICENSE_LOCATION]:" IN
    if [[ $IN -ne "" ]]
    then
        LICENSE_LOCATION=$IN
    fi

    read -r -p "Install to location [$INSTALLATION_LOCATION]:" IN
    if [[ $IN -ne "" ]]
    then
        INSTALLATION_LOCATION=$IN
    fi

    echo "*** Database settings"
    read -r -p "MySQL host [$MYSQL_SERVER]:" IN
    if [[ $IN -ne "" ]]
    then
        MYSQL_SERVER=$IN
    fi

    read -r -p "MySQL database [$MYSQL_DATABASE]:" IN
    if [[ $IN -ne "" ]]
    then
        MYSQL_DATABASE=$IN
    fi

    read -r -p "MySQL username [$MYSQL_USERNAME]:" IN
    if [[ $IN -ne "" ]]
    then
        MYSQL_USERNAME=$IN
    fi

    read -s -r -p "MySQL password [$MYSQL_PASSWORD] (will not be echoed):" IN
    if [[ $IN -ne "" ]]
    then
        MYSQL_PASSWORD=$IN
    fi
    echo ""

    read -r -p "Table prefix [$DB_PREFIX]:" IN
    if [[ $IN -ne "" ]]
    then
        DB_PREFIX=$IN
    fi

    echo "*** Misc settings"
    read -r -p "Email to send debug reports to [$DEBUG_ADDRESS]:" IN
    if [[ $IN -ne "" ]]
    then
        DEBUG_ADDRESS=$IN
    fi

}

function import_db
{
    cat package/skel/xtCommerce.sql | mysql $MYSQL_DATABASE -u $MYSQL_USERNAME -p$MYSQL_PASSWORD
    check_outcome "Putting database in place"
}

function move_to_destination
{
    mv $dir/* $INSTALLATION_LOCATION/
    check_outcome "Moving to installation directory"
}

function sql_query()
{
    if [[ $2 != "" ]]
    then
        echo "$1" | mysql $2 -u $MYSQL_USERNAME -p$MYSQL_PASSWORD 1>/dev/null
    else
        echo "$1" | mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD 1>/dev/null
    fi
    return $?
}

function do_install
{
    echo "Unzipping installation package. This might take a while."
    unzip -q -d package/extracted $SOURCE_ZIP_LOCATION
    check_outcome "Unzipping installation package"

    sub_dir=`ls package/extracted`
    sub_sub_dir=`ls --group-directories-first package/extracted/$sub_dir/ | awk '{print $1}' | head -n 1`
    dir=`echo "package/extracted/$sub_dir/$sub_sub_dir"`

    cp -R package/skel/conf/* $dir/conf/
    check_outcome "Copying config skeleton"

    cp $LICENSE_LOCATION $dir/lic/
    check_outcome "Copying license"

    cat package/skel/conf/config.php | sed -e "s/{{INSTALL_MYSQL_HOST}}/$MYSQL_SERVER/g" | sed -e "s/{{INSTALL_MYSQL_USER}}/$MYSQL_USERNAME/g" \
    | sed -e "s/{{INSTALL_MYSQL_PASSWORD}}/$MYSQL_PASSWORD/g" | sed -e "s/{{INSTALL_MYSQL_DATABASE}}/$MYSQL_DATABASE/g" \
    | sed -e "s/{{INSTALL_DB_PREFIX}}/$DB_PREFIX/g" | sed -e "s/{{INSTALL_DEBUG_ADDRESS}}/$DEBUG_ADDRESS/g" > $dir/conf/config.php
    check_outcome "Mangling config"

    sql_query "show tables;" $MYSQL_DATABASE

    if [[ $? -ne 0 ]]
    then
        sql_query "CREATE DATABASE $MYSQL_DATABASE;"
        check_outcome "Creating database..."
        import_db
    else
        echo -e "\n*** USER INPUT REQUIRED"
        uinput=""
        while [[ $uinput == "" ]]
        do
            read -r -n 1 -p "Database $MYSQL_DATABASE exists. Do you want to [D]rop and recreate it, [I]mport data, [S]kip import of the data (default: [S])?" input
            echo ""
            case $input in
                D)
                    sql_query "DROP DATABASE $MYSQL_DATABASE;"
                    check_outcome "Dropping database"
                    sql_query "CREATE DATABASE $MYSQL_DATABASE;"
                    check_outcome "Creating database"
                    import_db
                    uinput="out"
                ;;
                I)
                    import_db
                    uinput="out"
                ;;
                S)
                    uinput="out"
                ;;
                *)
                echo "Invalid selection, choose one of [ D, I, S ]!"
                ;;
            esac
        done
    fi



    if [[ ! -d $INSTALLATION_LOCATION ]]
    then
        mkdir $INSTALLATION_LOCATION
        check_outcome "Creating installation directory $INSTALLATION_LOCATION"
    else
        echo -e "\n*** USER INPUT REQUIRED"
        uinput=""
        while [[ $uinput == "" ]]
        do

            read -r -n 1 -p "Installation directory $INSTALLATION_LOCATION exists. Do you want to [D]elete and recreate it, try to [M]ove into it anyway, [S]kip copy of the data (default: [S])?" input
            echo ""
            case $input in
                D)
                    rm -rf $INSTALLATION_LOCATION
                    mkdir $INSTALLATION_LOCATION
                    move_to_destination
                    uinput="out"
                ;;
                M)
                    move_to_destination
                    uinput="out"
                ;;
                S)
                    uinput="out"
                ;;
                *)
                echo "Invalid selection, choose one of [ D, M, S ]!"
                ;;
            esac
        done
    fi

    rm -rf package/extracted
    check_outcome "Removing temporary files"

    rm -rf $INSTALLATION_LOCATION/xtInstaller && rm -rf $INSTALLATION_LOCATION/xtUpdater && rm -rf $INSTALLATION_LOCATION/xtWizard
    check_outcome "Removing installation directories xtInstaller / xtUpdater / xtWizard"
    echo " "
    echo "********* LOGIN INFORMATION *********"
    echo -e "Administrator login: admin\nAdministrator password: Uc%1qm!m"
    echo "*************************************"
    echo " "
    return 0
}



echo -e "\nWelcome to XtCommerce automated installer.\n"
read -r -n 1 -s -p "Press [I] for interactive setup, any other key - setup with values defined in this script, [CTRL-C] to exit" setup_type
echo ""
if [[ $setup_type == "I" || $setup_type == "i" ]]
then
    echo "Entering interactive setup"
    interactive_setup
fi

do_install
check_outcome "Installing XtCommerce"
