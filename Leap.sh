#!/bin/bash

#https://exercism.org/tracks/bash/exercises/leap

main()
{

    if [[ ! "$1" =~ ^[0-9]+$ || "$#" -ne 1 ]]; then
        echo "Usage: leap.sh <year>"
        exit 1
    fi

    year=$1
    leap=1

    if [[ $((year%4)) -eq 0 && $((year%100)) -ne 0 ]]; then
        leap="true"
    elif [[ $((year%100)) -eq 0 && $((year%400)) -eq 0 ]]; then
        leap="true"
    else
        leap="false"
    fi

    echo "$leap"
}

main "$@"
