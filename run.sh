#!/bin/bash 

export GITEA__database__DB_TYPE=postgres
export GITEA__database__SSL_MODE=require
export GITEA__database__HOST=`echo $DATABASE_URL | grep -o "@.*/" | sed 's/.$//' | cut -c 2-`
export GITEA__database__NAME=`echo $DATABASE_URL | grep -o "/[[:alnum:]]*$" | cut -c 2-`
export GITEA__database__USER=`echo $DATABASE_URL | grep -o "//[a-z]*:" | grep -o "[a-z]*"`
export GITEA__database__PASSWD=`echo $DATABASE_URL | grep -o ":[[:alnum:]]*@" | grep -o "[[:alnum:]]*"`


/usr/local/bin/environment-to-ini --config /etc/gitea/app.ini
/usr/local/bin/gitea web -port $PORT
