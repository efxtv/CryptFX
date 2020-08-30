#!/bin/bash
if [ -x /usr/bin/gocryptfs ]; then
    echo ""
echo "  _____ _______  __  _____       "
echo " | ____|  ___\ \/ / |_   _|_   __"
echo " |  _| | |_   \  /    | | \ \ / /"
echo " | |___|  _|  /  \    | |  \ V / "
echo " |_____|_|   /_/\_\   |_|   \_/ "
#START ------------------------------------------------
echo -en "\e0\e[1;92m\n"
echo -en "[\e[0m+\e[1;92m] 1 Encrypt \n"
echo -en "[\e[0m+\e[1;92m] 2 Decrypt \n"
echo -en "[\e[0m+\e[1;92m] 3 Uninstall \n"
echo -en "[\e[0m+\e[1;92m] 4 Exit \n"


echo -en "[\e[0mENTER\e[1;92m] Please select your Requirement :"
read input

if [[ $input == "1" || $input == "01" ]];
then
./Encrypt.sh
sleep 2

echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./Start.sh
  
elif [[ $input == "2" || $input == "02" ]];
then
  ./Decrypt.sh
echo -en "[\e[0m+\e[1;92m] Your files has been Decrypted  \n"
sleep2

  
elif [[ $input == "3" || $input == "03" ]];
then
  sudo apt-get remove gocryptfs -y
  rm -rf .cript
echo -en "[\e[0m+\e[1;92m] Program has been Uninstalled.  \n"
sleep 2
echo "Please wait, I'm sorry. Please drop your inconeinience. We will upgrade the tool."
sleep 2
echo "Exiting the aplication..."
sleep 3
exit
elif [[ $input == "4" || $input == "04" ]];
then
sleep 2
echo -en "[\e[0m+\e[1;92m] Exiting....\n"
sleep 3
exit
  fi


#End ----------------------------------------------------------
else
echo -en "[\e[0m+\e[1;92m] Setup notfound...\n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Press enter to setup the CryptFX [ENTER] :"
read ok
echo -en "[\e[0m+\e[1;92m] Installing [gocryptfs]... \n"
sudo apt-get install gocryptfs -y
echo -en "[\e[0m+\e[1;92m] gocryptfs has been installed... \n"
echo " "
sleep 3
echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 2
mkdir .cript
gocryptfs -init .cript
sleep 3
./Start.sh
fi
