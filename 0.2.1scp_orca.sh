#!/bin/bash
#set -x -v

source ~/.bash_profile
orca -v show containers | egrep -v "INFO|DEBUG"
echo " "
echo " "
echo " "

echo IP
read ip
echo PORT
read port

scp -P "$port" -i ~/.orca/id_rsa /Users/dmadeira/scripts/orca_prod/* /Users/dmadeira/scripts/orca_prod/case/*  ansible@"$ip":/home/ansible
