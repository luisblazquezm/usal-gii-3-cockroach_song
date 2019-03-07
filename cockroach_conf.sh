#!/bin/bash

TIME=3

PACKAGE=apt

dpkg -s $PACKAGE  &> /dev/null

# Check if package 'apt' is installed
if [ $? -ne 0 ]; then 
    echo -e '\n ---- Package $PACKAGE not installed ---- \n'
fi

PACKAGE=beep

dpkg -s $PACKAGE  &> /dev/null

# Check if package 'beep' is installed
if [ $? -ne 0 ]; then 
    echo -e "\n ---- Package $PACKAGE NOT installed. Installing, please wait a few seconds... ---- \n"
    sudo apt install $PACKAGE &> /dev/null
    echo -e "\n ---- Package $PACKAGE succesfully installed. ---- \n"
else 
    echo -e "\n ---- Package $PACKAGE already installed. \n"
fi

read -p '¿Do you want to reboot now?[y/N]:' OPTION

while ! [[ "$OPTION" == 'y' || "$OPTION" == 'Y' || "$OPTION" == 'n' || "$OPTION" == 'N' ]]
do
    echo -e "\n Invalid option. Please type y/Y/n/N."
    read -p '¿Do you want to reboot now?[y/N]:' OPTION
done

if [[ "$OPTION" == 'y' || "$OPTION" == 'Y' ]]; then
    echo -e "\nRebooting...\n"
    sleep $TIME
    sudo reboot
elif [[ "$OPTION" == 'n' || "$OPTION" == 'N' ]]; then
    echo -e "\n Cancelling rebooting. Don't forget to reboot later to test the service. \n"
fi
