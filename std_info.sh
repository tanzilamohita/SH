#!/usr/bin/env bash

echo "Name, Student ID, Age, Email, Phone Number" >> std_info.csv
while :
do
clear
echo "Welcome to the Student Information System"
echo "1. Add a Contact"
echo "2. Search Contacts"
echo "3. Delete Contact"
echo "4. View Student Information"
echo "5. Quit"
read -p "Enter your choice " usr_cmd
clear

case $usr_cmd in
1)echo "Add New Contact"
    read -p "Enter Name: " name
    read -p "Enter Student ID: " std_id
    read -p "Enter Age: " age
    read -p "Enter Email Address: " email
    read -p "Enter Phone Number: " phn_num
    clear
    echo "New User Info: "
    echo "-> Name: $name -> Student ID: $std_id -> Age: $age -> Email: $email -> Phone Number: $phn_num"
    echo "$name, $std_id, $age, $email, $phn_num" >> std_info.csv # saving data into csv file
    echo "Saved successfully"
    ;;
2)echo "Search Contacts"
    read -p "Enter user email to Search: " search_query
    clear
    echo "Search Results: "
    grep -i $search_query std_info.csv
    ;;
3)echo "Delete Contact"
    read -p "Enter contact name to be Deleted(case-sensitive): " delete_string
    sed -i -e "/$delete_string/d" std_info.csv
    echo "Delete Successful"
    ;;
4)echo "Student Information"
    echo ""
    cat std_info.csv;;
5)break;;
*)echo "INVALID OPERATION";;
esac;
read -p "Press 5 to Quit, Anything else to Return to Main Menu" confirm_exit
if [ $confirm_exit -eq 5 ]
then break
fi
done


