#!/bin/bash

#https://exercism.org/tracks/bash/exercises/nucleotide-count/

main()
{
    input="$1"
    
    a=0
    c=0
    g=0
    t=0

    for ((i=0;i<${#input};i++)); do
        case "${input:$i:1}" in
            A)
            a=$(($a+1))
            ;;
            C)
            c=$(($c+1))
            ;;
            G)
            g=$(($g+1))
            ;;
            T)
            t=$(($t+1))
            ;;
            *)
            echo "Invalid nucleotide in strand"
            exit 1
        esac
    done
    
    echo "A: $a"
    echo "C: $c"
    echo "G: $g"
    echo "T: $t"
}

main "$@"
