#!/usr/bin/env bash

echo "[Welcome to Guessing game]"

function ask {
	echo "Guess how many files are in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	ask
done

echo "Congratulations! You guessed correct, here is the list of files:"
echo "---" && ls -1
