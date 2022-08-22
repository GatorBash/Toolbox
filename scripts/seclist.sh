#!/bin/bash

if [[ $UID -ne 0 ]]
then
	echo 'run as sudo'
	exit 1
fi

echo "What is the path to the pcap?"
read -r pcap
echo "What is the path to Seclist/Password dir?"
read -r wordlist

mkdir $wordlist/backup
cp -r $wordlist
movefiles=$wordlist/movedfiles
DCreds=$wordlist/Default-Credentials
mkdir $wordlist/movedfiles
mv $DCreds/'Oracle EBS passwordlist.txt' $DCreds/tomcat-betterdefaultpasslist_base64encoded.txt $DCreds/vnc-betterdefaultpasslist.txt $movefiles
mv $wordlist/Malware/conficker.txt $movefiles
cat $wordlist/Malware/mirai-botnet.txt | cut -d " " -f 2 > $wordlist/Malware/new.txt
rm mirai-botnet.txt
gunzip $wordlist/SCRABBLE-hackerhouse.tgz
tar $wordlist/SCRABBLE-hackerhouse.tar
wait
cat $wordlist/Default-Credentials/*.txt | cut -d ":" -f 2 > $wordlist/DC.txt
wait
rm $wordlist/Default-Credentials/*.txt
cat $wordlist/*.txt > $wordlist/all.txt
wait
cat $wordlist/*/*.txt >> $wordlist/all.txt
wait
sort $wordlist/all.txt | uniq > $wordlist/Passwords.txt
wait
rm $wordlist/all.txt

sudo aircrack-ng -w $wordlist/
