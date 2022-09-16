cd /tmp/myapps
find . -name outputs.conf -exec rm -rf {} \;
find . -name indexes.conf  -exec rm -rf {} \;
find . -name web.conf   -exec rm -rf {} \;
find . -name authentication.conf  -exec rm -rf {} \;
find . -name authorize.conf  -exec rm -rf {} \;
find . -name distsearch.conf  -exec rm -rf {} \;
find . -name limits.conf  -exec rm -rf {} \;
find . -name server.conf  -exec rm -rf {} \;
find . -name inputs.conf -exec rm -rf {} \;
