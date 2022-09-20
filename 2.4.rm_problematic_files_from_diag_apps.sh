cd /tmp/myapps
echo " removing outputs.conf indexes.conf web.conf authentication.conf authorize.conf distsearch.conf limits.conf server.conf inputs.conf from all you previous selected apps "
find . -name outputs.conf -exec rm -rf {} \;
find . -name indexes.conf  -exec rm -rf {} \;
find . -name web.conf   -exec rm -rf {} \;
find . -name authentication.conf  -exec rm -rf {} \;
find . -name authorize.conf  -exec rm -rf {} \;
find . -name distsearch.conf  -exec rm -rf {} \;
find . -name limits.conf  -exec rm -rf {} \;
find . -name server.conf  -exec rm -rf {} \;
find . -name inputs.conf -exec rm -rf {} \;
echo " next script to run is 2.5.look_for_other_confs.sh if needed - this is an alternative script if you need to remove other configs, such as macros.conf datamodels.conf"
