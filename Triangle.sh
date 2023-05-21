#!/bin/bash

#https://exercism.org/tracks/bash/exercises/triangle

main()
{
    a=$(echo "$2" | bc)
    b=$(echo "$3" | bc)
    c=$(echo "$4" | bc)


    case "$1" in
        equilateral)

        if [[ $(echo "$a+$b <= $c" | bc) -eq 1 || $(echo "$b+$c <= $a" | bc) -eq 1 || $(echo "$a+$c <= $b" | bc) -eq 1 ]]; then
            echo "false"
        elif [[ $(echo "$a == $c" | bc) -eq 1  && $(echo "$b == $c" | bc) -eq 1 ]]; then
            echo "true"
        else
            echo "false"
        fi
        ;;
        isosceles)
        if [[ $(echo "$a+$b <= $c" | bc) -eq 1 || $(echo "$b+$c <= $a" | bc) -eq 1 || $(echo "$a+$c <= $b" | bc) -eq 1 ]]; then
            echo "false"
        elif [[ $(echo "$a == $b" | bc) -eq 1 || $(echo "$b == $c" | bc) -eq 1 || $(echo "$a == $c" | bc) -eq 1 ]]; then
            echo "true"
        else
            echo "false"
        fi
        ;;
        scalene)
        if [[ $(echo "$a+$b <= $c" | bc) -eq 1 || $(echo "$b+$c <= $a" | bc) -eq 1 || $(echo "$a+$c <= $b" | bc) -eq 1 ]]; then
            echo "false"
        elif [[ $(echo "$a!=$b" |bc) -eq 1 && $(echo "$b!=$c" |bc) -eq 1 && $(echo "$a!=$c" |bc) -eq 1 ]]; then
            echo "true"
        else
            echo "false"
        fi
        ;;
        *)
        echo "error"
        exit 1;;
    esac
}

main "$@"

