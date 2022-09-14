#!/bin/sh
#nmap -sP  192.168.87.26/24 -oG - | awk '/Up$/{print $2}' > ipadddress.txt

#mapfile -t myArray < ipadddress.txt

declare -a myArray=("192.168.87.24" "192.168.87.29" "192.168.87.21" "192.168.87.10" "192.168.87.01" )
for i in "${myArray[@]}"
do
   echo "$i"
   sshpass -p "123456" ssh apsit@$i 'pkill chrome;exit' 
   #pkill chrome 
done
#192.168.87.24" "192.168.87.23" "192.168.87.22" "192.168.87.21" "192.168.87.27
#"192.168.87.01" "192.168.87.02" "192.168.87.04" "192.168.87.05"
#echo 123456 | sudo -S reboot
