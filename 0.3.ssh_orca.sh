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
echo " you are about to connect to your orca instance. Once you are conneced in there, please run ./1.1.packages.sh as ansible user "

ssh -p "$port" -i ~/.orca/id_rsa ansible@"$ip"
