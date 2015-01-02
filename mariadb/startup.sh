#/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

    mysql_install_db

    /usr/bin/mysqld_safe &
    mysqladmin --silent --wait=30 ping || exit 1

    echo "GRANT ALL PRIVILEGES ON *.* TO root@'%';" | mysql

    killall mysqld
    mysqladmin --silent --wait=30 ping || exit 1
fi

/usr/bin/mysqld_safe
