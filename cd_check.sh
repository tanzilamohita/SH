#!/usr/bin/env bash

#===================================
# Tanzila Islam
# Date Created: 26.12.2019
#===================================
# check list of files in current directory
echo Here are the files in current directory
ls
pwd # print current directory
echo $PATH

# command line arguments
#$0 - The name of the script.
#$1 - $9 - Any command line arguments given to the script. $1 is the first argument, $2 the second and so on.
#$# - How many command line arguments were given to the script.
#$* - All of the command line arguments.


echo The name of the script is: $0
echo Given arguments number in the script: $#
echo Given arguments are: $1, $2, $3

read test