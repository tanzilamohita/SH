#!/usr/bin/env bash

#===================================
# Tanzila Islam
# Email: tanzilamohita@gmail.com
# Date Created: 26.12.2019
#===================================

# printing message in center of terminal using tput

cols=$( tput cols ) # how many columns the terminal has
rows=$( tput lines) # how many rows the terminal has

# Take all the command line arguments and assign them to a single variable message.
message=$@

# how many characters are in the string message.
input_length=${#message}
# half of the length of the string message
half_input_length=$(( $input_length / 2 ))
# Calculate where to place the message for it to be centered.
middle_row=$(( $rows / 2 ))
middle_col=$(( ($cols / 2) - $half_input_length ))

# tput clear the terminal
tput clear
# tput cup will place the cursor at the given row and column
tput cup $middle_row $middle_col
# tput bold will make everything printed to the screen bold.
tput bold
# print message
echo $@
# tput sgr0 will turn bold off
tput sgr0
#  Place the prompt at the bottom of the screen
tput cup $( tput lines ) 0

read test




