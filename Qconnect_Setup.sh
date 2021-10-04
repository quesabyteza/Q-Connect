#!/bin/bash

#Update Ubuntu
apt update
apt -y upgrade

#Install mysql
apt install mysql-server

#Install FreeRadius
apt install -y freeradius freeradius-rest freeradius-mysql

# Enable required modules
ln -s /etc/freeradius/mods-available/sql /etc/freeradius/mods-enabled/sql
ln -s /etc/freeradius/mods-available/rest /etc/freeradius/mods-enabled/rest
ln -s /etc/freeradius/mods-available/sqlcounter /etc/freeradius/mods-enabled/sqlcounter

#Install apache
apt install apache2

#install Apache modules
apt install apache2-mysql

#Install PHP
apt-get install php

#Install PHP modules
apt install libapache2-mod-php php-mcrypt php-mysql




