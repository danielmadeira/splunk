cd myapps
find . -name outputs.conf -exec ls {} \;
find . -name indexes.conf -exec ls {} \;
find . -name web.conf  -exec ls {} \;
find . -name authentication.conf -exec ls {} \;
find . -name authorize.conf  -exec ls {} \;
find . -name distsearch.conf -exec ls {} \;
find . -name limits.conf  -exec ls {} \;
find . -name server.conf  -exec ls {} \;
find . -name inputs.conf -exec ls {} \;

echo " if you get no results on screen before this message, it means that the apps you are about to copy to your test instance are clear of outputs indexes web authentication authorize distsearch limits server inputs conf files "
echo " you are now loggin is as splunk user, so please run 3.1.stop_chown_start.sh "

sudo su splunk
cd /tmp
