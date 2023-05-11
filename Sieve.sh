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
    counter=0
    for i in "${vals[@]}"
    do
        #delete=2
        echo "i $i - cntr $counter"
        counter=$(($counter+1))
    done
}

delete "$@"
