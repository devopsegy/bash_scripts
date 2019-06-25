#!/bin/bash
# Install python with apache , redis , mysql , mod-wsgi

yum group install "Development Tools" -y && 
sleep 120

wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm  &&
sleep 10 

rpm -ivh mysql57-community-release-el7-9.noarch.rpm &&

sleep 10

yum install mysql-server  MySQL-python python-devel mysql-devel redis mod_wsgi  mod_ssl  httpd nodejs python-pip openssl openssl-devel python-django curl httpd-devel vim git screen

systemctl enable mysqld ; systemctl start mysqld ; systemctl enable redis ; systemctl restart redis ; systemctl enable httpd ; systemctl restart httpd 

pip install virtualenv   && 

sleep 10

pip install --upgrade pip  && 
