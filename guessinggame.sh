#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your guess as an integer"
        read  number
	expr "$number" + 1 > /dev/null 2>&1
	if [ $? -gt 1 ]
	then
	    echo "You need to input an INTEGER."
        elif [ $number -lt $true_ans ]
        then
            echo "Your guess is Less than the real number of files"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater than the real number of files"
        else
            echo " Congratulations, You Got It!"
        break;
        fi
    done
}
echo "Guess how many files are in this folder :)"
guess
