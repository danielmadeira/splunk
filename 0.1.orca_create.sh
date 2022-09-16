source ~/.bash_profile
echo "create orca"
echo "what splunk enterprise major version"
read a
echo "what splunk enterprise minor version"
read b 
echo "what splunk enterprise maintenance version"
read c
echo "what itsi major version"
read d
echo "what itsi minor version"
read e
echo "what itsi maintenance version"
read f
echo "what prefix"
read g

orca create --splunk-version "$a"."$b"."$c" --apps itsi:"$d"."$e"."$f" --prefix "$g" --labels retention_time=3456000

orca -v show containers | egrep -v "INFO|DEBUG"
