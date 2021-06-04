#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -1 | wc -l)

function correct_guess {        
    if [[ $1 -lt $2 ]]          
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Wow! Your guess is correct!"
    fi
}

while [[ $count -ne $guess ]]   
do
    read -p "Guess the number of files present in the current directory? " guess
    echo $(correct_guess $guess $count)
    echo ""
done
