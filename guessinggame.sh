#!/usr/bin/env bash
###### Created By Apoorva Seth #######
###### Created on 08 Feb 2022  #######

filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You finally guessed it correct!"
		for f in $(ls)
		do
			echo "  - $f and "
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less number of files in directory. Please try again and press Enter :"
			guess_filenum
		else
			echo "There is more number of files in directory. Please try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game world !"
echo "Can you guess how many files are in the current directory and press Enter :"
guess_filenum