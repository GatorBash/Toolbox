#!/bin/bash

while true
do
        echo "Here are your options"
        echo "1) airodump-ng"
        echo "2) nmap"
        echo "3) Monitor/Managed"
        echo "4) exit"
        read a
        if [[ "$a" = [1-4] ]]
        then

                case $a in
                        1)
                                echo "What interface do you want to use?"
                                read int
                                read file -p "What do you want to name the file?"
                                sudo airodump-ng $int -w $file
                                ;;

                        2)
                                echo "Ok we can do a lot here so lets dig through this"
                                echo "What ip/network do you want to scan?"
                                read ip
                                echo "What scan do you want to do?"
                                echo "1) Syn/stealth"
                                echo "2) Version"
                                echo "3) OS"
                                echo "4) Hail Mary"
                                echo "5) exit"
                                read b
                                case $b in

                                        1)
                                                sudo nmap -vv -sS --open $ip
                                                ;;

                                        2)
                                                sudo nmap -vv -sV --open $ip
                                                ;;

                                        3)
                                                sudo nmap -O -vv --open $ip
                                                ;;

                                        4)
                                                sudo nmap -vv -A --open $ip
                                                ;;

                                        5)
                                                exit
                                                ;;
                                esac
                                                                                   1,1           Top

                       3)
                                echo "What do you want to do?"
                                echo "1) Set interface to Monitor"
                                echo "2) Set interface to Managed"
                                echo "3) Exit"
                                echo "Select 1-3"
                                read a
                                if [[ "$a" = [1-3] ]]
                                then

                                case $a in

                                        1)
                                                echo "What interface are you configuring?"
                                                read b
                                                sudo ip link set $b down
                                                sudo iwconfig $b mode monitor
                                                sudo ip link set $b up
                                                echo "The dark deed is done"
                                                ;;

                                        2)
                                                echo "What interface are you configuring?"
                                                read b
                                                sudo ip link set $b down
                                                sudo iwconfig $b mode managed
                                                sudo ip link set $b up
                                                echo "All done for the day"
                                                ;;

                                        3)
                                                echo "Fine then"
                                                exit
                                                ;;

                                        esac

                                else
                                        echo "You need to enter 1-3"

                                fi
                                ;;
                        4)
                                exit
                                ;;
                esac
        else
                echo "pick 1-4"
        fi
done
