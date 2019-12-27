#!/usr/bin/env bash

# spinner=( 0oooo o0ooo oo0oo ooo0o ooooo0)
spinner=( '|' '/' '-' '\')
copy() {
    echo -n "Copying files"
    spin &
    pid=$!

    for i in `seq 1 10`
    do
        sleep 2
    done
    kill $pid
    echo ""
}
spin(){
    while [ 1 ]
    do
        for i in "${spinner[@]}"
        do
            #echo -ne "\r$i"
            echo -ne "."
            sleep 0.2
        done
    done
}
copy

