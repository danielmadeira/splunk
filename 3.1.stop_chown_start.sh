sudo /opt/splunk/bin/splunk stop
sudo chown -R splunk: /tmp/myapps
sudo chown -R splunk: /opt/splunk
mkdir /tmp/original_untouched_apps_splunk
cp -rf /opt/splunk/etc/apps/* /tmp/original_untouched_apps_splunk
rm -rf /opt/splunk/etc/apps/*
cp -rf /tmp/myapps/* /opt/splunk/etc/apps/
cp /tmp/Splunk_ITSI_NFR* /opt/splunk/etc/licenses/enterprise/Splunk_ITSI_NFR_FY23\ 2H.xml.lic
sudo chown -R splunk: /opt/splunk
sudo /opt/splunk/bin/splunk start

echo " your license has been installed and your new setup has been issued . carry on working "
echo "you still need to issue the backup: UI or https://docs.splunk.com/Documentation/ITSI/4.14.0/Configure/kvstorejson" 
