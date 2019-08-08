#!/bin/bash
service mysql start
sleep 3

echo `service mysql status`

touch init.sql
echo 'CREATE DATABASE IF NOT EXISTS irext DEFAULT CHARSET utf8 COLLATE utf8_general_ci;' > init.sql
cat /mysql/irext.sql >> init.sql
mysql < init.sql

sleep 3
mysql < /mysql/privileges.sql

tail -f /dev/null
