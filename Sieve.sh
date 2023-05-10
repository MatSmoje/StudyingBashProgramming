#!/bin/bash

# https://exercism.org/tracks/bash/exercises/sieve

main()
{
    vals=($(seq 2 1 $1)) 

    for i in "${vals[@]}"
    do
        echo "$i"
    done

}

main "$@"
