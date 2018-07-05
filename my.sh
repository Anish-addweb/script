#!/bin/bash
pwd=root
my="mysql -u root -p -e 'show databases;'"
/usr/bin/expect <<EOD
spawn docker exec -i drupal8-vagrant_db_1 bash -c $my
expect "Enter password:"
send "$pwd\r"
interact
EOD
