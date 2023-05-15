#!/bin/bash

# https://exercism.org/tracks/bash/exercises/sieve

main()
{
    vals=($(seq 2 1 $1)) 
    echo "${vals[@]}"
    #delete=8
    #echo ${vals[@]/$delete}

    local rule
    local vals

}
delete()
{
    vals=($(seq 2 1 $1)) 
    output="${vals[@]}"

    for j in 2 3 5
    do
        counter=0
        for i in "${vals[@]}"
        do
            if [[ "$j" -eq 2 && "$counter" -eq 2  ]]; then
                delete=$i
                output=( ${output[@]/$delete} )
                counter=0
            elif [[ "$j" -eq 3 && "$counter" -eq 4  ]]; then
                delete=$i
                output=( ${output[@]/$delete} )
                counter=1
            elif [[ "$j" -eq 5 && "$counter" -eq 6  ]]; then
                delete=$i
                output=( ${output[@]/$delete} )
                counter=2
            fi
            counter=$(($counter+1))
            echo "${output[@]}"
        done
    done
    echo "${output[@]}"
}

delete "$@"
