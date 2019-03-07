#!/bin/bash

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
    echo -e '\n ---- Package $PACKAGE NOT installed. Installing, please wait a few seconds... ---- \n'
    sudo apt install $PACKAGE &> /dev/null
    echo -e '\n ---- Package $PACKAGE succesfully installed. ---- \n'
else 
    echo -e '\n ---- Package $PACKAGE already installed. Rebooting... \n'
    sleep 3
    reboot
fi
