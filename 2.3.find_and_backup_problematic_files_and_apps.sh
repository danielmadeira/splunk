cd /tmp/diag/etc/apps
echo " please select and insert the name of the apps you need to recreate to your new  orca instance . 23 apps can be copied at this time, but if less just skip by pressing enter "
echo "app1"
read a1
echo "app2"
read a2
echo "app3"
read a3
echo "app4"
read a4
echo "app5"
read a5
echo "app6"
read a6
echo "app7"
read a7
echo "app8"
read a8
echo "app9"
read a9
echo "app10"
read a10
echo "app11"
read a11
echo "app12"
read a12
echo "app13"
read a13
echo "app14"
read a14
echo "app15"
read a15
echo "app16"
read a16
echo "app17"
read a17
echo "app18"
read a18
echo "app19"
read a19
echo "app20"
read a20
echo "app21"
read a21
echo "app22"
read a22
echo "app23"
read a23

echo "please wait - duplicating needed apps from customer's diag to /tm/myapps and /tmp/myapps_backup"
cp -rf "$a1" "$a2" "$a3" "$a4" "$a5" "$a6" "$a7" "$a8" "$a9" "$a10" "$a11" "$a12" "$a13" "$a14" "$a15" "$a16" "$a17" "$a18" "$a19" "$a20" "$a21" "$a22" "$a23"   /tmp/myapps
cp -rf /tmp/myapps/* /tmp/myapps_backup
cd /tmp/myapps
echo " next script to run 2.4.rm_problematic_files_from_diag_apps.sh "
