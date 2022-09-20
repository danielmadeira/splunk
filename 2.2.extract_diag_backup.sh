tar -xzf *.tar.gz
mv diag-*/* /tmp/diag
cp -rf diag/* /tmp/diag_original
unzip *.zip
cp -rf /tmp/backup/* /tmp/backup_original
cat backup/conf_files/itsi/inputs.conf
rm -rf backup/conf_files/itsi/inputs.conf
cd /tmp/diag/etc/apps
find . -name macros.conf
find . -name inputs.conf
find . -name indexes.conf
find . -name authentication.conf
find . -name authorize.conf
find . -name distsearch.conf
find . -name limits.conf
find . -name server.conf

echo " next script 2.3.find_and_backup_problematic_files_and_apps.sh "
