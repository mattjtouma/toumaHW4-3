#!/bin/bash

# CPE 522 HW 4 Problem 3
# Matthew J. Touma
# 10/5/2021

# This script takes four command line arguments, and
# adds the first three. Then the sum is passed to 
# subtractionMachine.sh with the fourth command line
# argument.

# Example Invocation:
# ./threeAmigos.sh 4 5 1 20


# Make sure the user inputs the correct number of arguments.
# If LESS  than four arguments are passed...
if [ $# -lt 4 ]
then
        echo "Not enough input arguments" 
        exit 2 # exit the script

# If MORE than four arguments are passed...
elif [ $# -gt 4 ]
then
        echo "Too many input arguments"
        exit 3 # exit the script
fi

# sum the first three inputs
mySum=$(($1 + $2 + $3))
# display the sum
echo Sum = $mySum

# pass inputs to subtractMachine.sh
../problem_2/subtractMachine.sh $mySum $4
