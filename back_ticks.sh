#!/usr/bin/env bash
#===================================
# Tanzila Islam
# Date Created: 26.12.2019
#===================================

lines=`cat $1 | wc -l`
echo The number of lines in the file $1 is $lines

read test