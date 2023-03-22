#!/bin/bash

cat ntw.log | grep "Triggered by " | cut -d " " -f 3 >> temp.txt
cat /home/gayathri/Documents/ntw.log | grep "User-Agent" | cut -d "(" -f 2 | cut -d ")" -f 1 >> source.txt

echo "Network triggered status:"
echo "--------------------------"
echo "TRIGGERED IP	SOURCE OS"
echo " "
exec 6<"/home/gayathri/Documents/source.txt"
while read -r line
do
	read -r f2line <&6
	echo "${line}	${f2line}"
done <"/home/gayathri/Documents/temp.txt"
exec 6<&-

echo " "
cp /dev/null /home/gayathri/Documents/temp.txt
rm /home/gayathri/Documents/temp.txt
cp /dev/null /home/gayathri/Documents/source.txt
rm /home/gayathri/Documents/source.txt
