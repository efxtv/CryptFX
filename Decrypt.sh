#!/bin/bash
if [[ -e .cript ]]; then
echo "Created"
else
echo "Please hide some files first"
fi
echo -en "[\e[0m+\e[1;92m] Please provide the path ned to Decrypt... :"
read show
gocryptfs .cript $show
echo -en "[\e[0m+\e[1;92m] Decryption has been completed...\n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Hit enter to contiune [Enter] \n"
read et
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
