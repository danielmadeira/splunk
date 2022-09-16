# splunk
This is a simple project, for internal workers on VPN and with access to tools, such as Docker, Orca, Shamu, NOVA

This is an amateur project.

The scripts aren't pretty.

Most of the scripts will be bash.

Some of the scripts will be python.

These are a series of small scripts that need invoking and interacted with along the way.

Issued from a Mac / docker image

--------
Run the following scripts on the following:
0. local machine > Mac
1. ansible user > docker instance > /home/ansible
2. root user > docker instance > sudo su -
3. splunk user > sudo su splunk
--------


SCRIPTS:
---------

RUN LOCAL MACHINE MAC
1st 
0.1.orca_create.sh
script for creation of a single instance


2nd
0.2.0.transfer_before_scp.sh
Adjust this script's local username from Mac before use it in your machine.
If you have download the diag and backup files recently this script will tail the last two entries for .zip (backup) and .tar.gz (diag) and work fine, otherwise adjust the tail -5


3rd
0.2.1scp_orca.sh
I have put all the scripts in /Users/dmadeira/scripts/orca_prod/ 
If you did the change in the previous script this directory has been created.
If you Download the scripts from GIT, please place them there or adjust path
This script is copying scripts in /Users/dmadeira/scripts/orca_prod/ and diag and backup from /Users/dmadeira/scripts/orca_prod/case
* very important - have a copy of "Splunk_ITSI_NFR_FY23 2H.xml" ITSI license in /Users/dmadeira/scripts/orca_prod/ before you run the script


4th
0.3.ssh_orca.sh
just sshing


RUN DOCKER MACHINE (/home/ansible)
5th 
1.1.packages.sh
Installing some packages and copying all files that you scp before to /tmp
Running this from /home/ansible


RUN DOCKER MACHINE (/home/root)
SCRIPTS ARE IN /tmp
6th
2.1.set.sh
running this from /home/root
we are setting some variables and creating some directories
please run "source .bashrc" after running the script


7th
2.2.extract_diag_backup.sh
we are doing an extraction of diag and deflation of backup
we are doing some duplicates
we are then finding apps under /tmp/diag/etc/apps which have problematic conf files
after running the script, copy the results and manually select all the apps to enter in the next script
* Use any program such as sublime to take note of those


8th
2.3.find_and_backup_problematic_files_and_apps.sh
we are copying the apps which we are interested from customer diag to /tmp/myapps and /tmp/myapps_backup
manual input of the necessary apps - place name of the app
23 in total capacity, but just add the needed ones and then skip the rest by pressing enter


9th
2.4.rm_problematic_files_from_diag_apps.sh
we are removing the problematic confs from the apps we want to emulate from /tmp/myapps in to our instance


10th
2.5.look_for_other_confs.sh
extra script to further add more apps from customer diag which might contain commands.conf and datamodels.conf and which might not have been copied yet, but might have been copied already, please, remember the list in 
* you don't need to run this if you don't want to
* * in case you are copying a new app which hasn't been copied yet with script 2.2.extract_diag_backup.sh, then run 2.4.rm_problematic_files_from_diag_apps.sh again


11th
2.6.look_if_all_trouble_files_were_removed.sh
if you get no results on screen before this message, it means that the apps you are about to copy to your test instance are clear of outputs indexes web authentication authorize distsearch limits server inputs conf files


RUN DOCKER MACHINE (/home/splunk)
SCRIPTS ARE IN /tmp
12th
3.1.stop_chown_start.sh
will stop splunk, install ITSI license, move prepared apps from /tmp/myapps to /opt/splunk/etc/apps and starts splunk
run this with splunk user - run "sudo su splunk" prior


