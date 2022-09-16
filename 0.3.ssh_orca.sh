#!/bin/bash

source ~/.bash_profile
orca -v show containers | egrep -v "INFO|DEBUG"
echo " " 
echo " "
echo " "

echo IP
read ip
echo PORT
read port

ssh -p "$port" -i ~/.orca/id_rsa ansible@"$ip"
