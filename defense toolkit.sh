!#/bin/bash

            #install toolkit
            echo "Install Tool Menu:"
            echo "1)Install Netmiko"
            echo "2)Install Suricata"
            echo "3)Install Opencanary"
            echo "4)Install ClamAV"
            echo "5)Install RKHunter"
            echo "6)Install Lynis"
            echo "A)INSTALL ALL"
            echo "Q)Quit"

            read -p "Choose App To Install: " num
            case "$num" in
            1)
                 echo "Netmiko"
                 sudo apt update && sudo apt install netmiko -y
                ;;
            2)
                echo "Suricata"
                sudo apt update && sudo apt install suricata -y
                ;;
            3)
                echo "Opencanary"
                sudo apt install python3 python3-pip -y
                sudo pip3 install opencanary opencanary[dev]
                ;;
            4)
                echo "ClamAV"
                sudo apt update && sudo apt install clamav clamav-daemon -y
                ;;
            5)
                echo "RKHunter"
                sudo apt update && sudo apt install rkhunter -y
                ;;
            6)
                echo "Lynis"
                sudo apt update && sudo apt install lynis -y
                ;;
            A)
                echo "Install all"
                sudo apt update && sudo apt install netmiko suricata clamav clamav-daemon rkhunter lynis python3 python3-pip -y
                sudo pip3 opencanary opencanary[dev]
                ;;
            Q)
                echo "Quiting..."
                ;;
        esac