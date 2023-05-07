#!/bin/bash

#https://exercism.org/tracks/bash/exercises/proverb

main()
{
    for (( i=1;i<=$#;i++ )); do
        if [[ "$i" -lt $# ]]; then
            echo "For want of a ${*:$i:1} the ${*:$i+1:1} was lost."
        elif [[ "$i" -eq $# ]]; then 
            echo "And all for the want of a ${*:1:1}."
        else
            echo "KeepGoing"
        fi
    done
}

main "$@"
