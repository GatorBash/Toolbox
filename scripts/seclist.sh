#!/bin/bash

if [[ $UID -ne 0 ]]
then
        echo 'run as sudo'
        exit 1
fi

echo "download the seclist? y/n"
read -r git
if [[ $git == y ]]
then
        git clone https://github.com/GatorBash/SecLists.git
        wd=$(pwd)
        sec=/SecLists/Passwords
        wordlist=$wd$sec
        echo "What is the path to the pcap?"
        read -r pcap
else
        echo "What is the path to the pcap?"
        read -r pcap
        echo "What is the path to Seclist/Password dir?"
        read -r wordlist
fi

#make a backup of Seclist/Password dir
echo "making a backup for you"
sleep 4
mkdir $wordlist/../backup
cp -r $wordlist $wordlist/../backup/
wait

#variables for moving files
movefiles=$wordlist/movedfiles
DCreds=$wordlist/Default-Credentials

#moving files that won't parse to a different dir
mkdir $wordlist/movedfiles
mv $DCreds/'Oracle EBS passwordlist.txt' $DCreds/tomcat-betterdefaultpasslist_base64encoded.txt $DCreds/vnc-betterdefaultpasslist.txt $movefiles
mv $wordlist/Malware/conficker.txt $movefiles

#removing some trash
ldata=$wordlist/Leaked-Databases
rm $ldata/*withcount.txt
grep -o '[^:]*$' $ldata/fortinet-2021.txt > $ldata/fortinet.txt
rm $ldata/fortinet-2021.txt
#rm $wordlist/pars.txt

#parsing out usernames
cat $wordlist/Malware/mirai-botnet.txt | cut -d " " -f 2 > $wordlist/Malware/new.txt
rm $wordlist/Malware/mirai-botnet.txt

#unziping and taring SCRABBLE dir
gunzip $wordlist/SCRABBLE-hackerhouse.tgz
tar -xvf $wordlist/SCRABBLE-hackerhouse.tar
wait

#merging all the default creds dir txt files and dumping them
cat $wordlist/Default-Credentials/*.txt | cut -d ":" -f 2 > $wordlist/DC.txt
wait
rm $wordlist/Default-Credentials/*.txt

#merging all the lists into one file
cat $wordlist/*.txt > $wordlist/all.txt
wait

#merging all the txt files in subdir into all.txt
cat $wordlist/*/*.txt >> $wordlist/all.txt
wait

#cleaning up the all fiel and putting it into the Passwords.txt
sort $wordlist/all.txt | uniq > $wordlist/Passwords.txt
wait

#removing all.txt
rm $wordlist/all.txt

#throwing the whole list at the pcap
sudo aircrack-ng -w $wordlist/Passwords.txt $pcap
