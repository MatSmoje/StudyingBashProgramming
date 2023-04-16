#!/bin/bash

# Raindrops
# https://exercism.org/tracks/bash/exercises/raindrops

main ()
{
    output=''
    if [[ $(( $1 % 3 )) == 0 ]]; then
        output="${output}Pling"
    fi
    if [[ $(( $1 % 5 )) == 0 ]]; then
        output="${output}Plang"
    fi
    if [[ $(( $1 % 7 )) == 0 ]]; then
        output="${output}Plong"
    fi
    if [[ $(( $1 % 3 )) != 0 ]] && [[ $(( $1 % 5 )) != 0 ]] && [[ $(( $1 % 7 )) != 0 ]]; then
        output=$1
    fi
    echo $output

}


main "$@"
