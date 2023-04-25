#!/bin/bash

#https://exercism.org/tracks/bash/exercises/grains/

main()
{
        if [ "$1" = "total" ]; then
                total;
        elif [[ "$1" -gt 64 || "$1" -lt 1 ]]; then      
                echo "Error: invalid input"
                exit 1
        elif [[ "$1" == 1 ]]; then
                echo 1
        else
                echo "2^(($1-1))" | bc
        fi
}       
total()
{       
        res="0"
        for (( i=2;i<65;i++ ));  do
                tot="$( bc <<< "2^(($i-1))" )"
                res="$( bc <<< "$res + $tot" )"
        done
        res="$( bc <<< "$res + 1" )"
        echo $res
}

main "$@"
