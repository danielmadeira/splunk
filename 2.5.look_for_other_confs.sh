cd /tmp/diag/etc/apps
echo " if you still have further apps with confs you need, such as with macros.conf commands.conf datamodels.conf, which haven't been apps copied yet in 2.3.find_and_backup_problematic_files_and_apps.sh, do it now "
find . -name macros.conf -exec grep -ln apply {} \;
find . -name commands.conf -exec grep -ln apply {} \;
find . -name datamodels.conf -exec grep -ln apply {} \;
echo "app 1"
read a1
echo "app 2"
read a2
echo "app 3"
read a3
cp -rf "$a1" "$a2" "$a3" /tmp/myapps

echo " if you have these new apps copied to /tmp/myapps just now, please run again 2.4.rm_problematic_files_from_diag_apps.sh "
echo " and then skip running this script again and sanitize by running script 2.6.look_if_all_trouble_files_were_removed.sh "

# vi /local/savedsearches.conf
# cp this/these apps to /opt/splunk/etc/apps too
