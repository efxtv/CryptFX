#!/bin/bash
if [[ -e .cript ]]; then
echo -en "[\e[0m+\e[1;92m] Checked... \n"
else
mkdir .cript
fi
echo -en "[\e[0m+\e[1;92m] No error found.. \n"
echo -en "[\e[0mNOTE\e[1;92m] Directory should be empty. Hite enter :"
read empty
echo -en "[\e[0m+\e[1;92m] Please provide the pate ned to secure :"
read secure
gocryptfs .cript $secure

echo -en "[\e[0m+\e[1;92m] Paste some files in the Directory and press enter :"
read enter
fusermount -u $secure
echo -en "[\e[0m+\e[1;92m] Encryption has been completed... \n"

sleep 2
echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Done...\n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Hit enter to contiune [Enter] :"
read et
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./Start.sh


