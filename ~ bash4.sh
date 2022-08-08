#!/bin/bash

# this script will prompt a menu, the user can pick a number, then a message will be printed with that number

echo "Pick a number from 1-3!" 
echo "1"
echo "2"
echo "3"

read number

case "${number}" in 
    "")	echo "nothing was picked! Goodbye!"; exit 1;;
    1) echo "1 was picked. HI there!"; exit 1;;
    2) echo "2 was picked. How are you doing today?"; exit 1;;
    3) echo "3 was picked. Did you eat today?"; exit 1;;

esac 


