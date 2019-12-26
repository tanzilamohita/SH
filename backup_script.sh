#!/usr/bin/env bash

#===================================
# Tanzila Islam
# Date Created: 26.12.2019
#===================================

date=`date +%F`
mkdir ~/projectbackups/$1_$date
cp -R ~/projectbackups/$1 ~/projectbackups/$1_$date
echo Backup of $1 completed

read test