cd /tmp/diag/etc/apps
find . -name commands.conf -exec grep -ln apply {} \;
find . -name datamodels.conf -exec grep -ln apply {} \;
echo "app 1"
read a1
echo "app 2"
read a2
echo "app 3"
read a3
cp -rf "$a1" "$a2" "$a3" /tmp/myapps
# vi /local/savedsearches.conf
# cp this/these apps to /opt/splunk/etc/apps too 
