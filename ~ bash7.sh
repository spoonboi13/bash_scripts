#!/bin/bash 

#this script will verify if myfile exists, if not creates it. then ask user if they want to delete it or not. if they have any other response, ask them again. give them 3 attemps before giving up. 

response=0
tries=0
while [ $response -eq 0 ]
do 	
    if [ -f myfile ]
    then 
	echo "myfile exists"
	echo "do you want to erase it? (y/n)"
	read response
	if [ $response = "y" ]
	then 
		echo "myfile is erased!"
		rm myfile
		response=1
	elif [ $response = "n" ] 
	then 
		echo "will not erase file"
		response=1
	else
		echo "invaild input"
		echo "please try again, y or no"
		tries=$((tries+1))
		if [ $tries -eq 3 ]
		then 
			echo "sorry! goodbye!"
			response=1
		fi
	fi
    else 
	    echo " myfile does not exist"
	    echo "creating file ..."
	    touch myfile 
	    response=1
    fi
done	
