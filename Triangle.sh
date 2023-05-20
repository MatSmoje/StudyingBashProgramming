#!/bin/bash

#https://exercism.org/tracks/bash/exercises/triangle

main()
{

    case "$1" in
        equilateral)
        if [[ $(($2+$3)) -le $4 || $(($3+$4)) -le $2 || $(($2+$4)) -le $3  ]]; then
            echo "false"
        elif [[ $2 -eq $3 && $3 -eq $4  ]]; then
            echo "true"
        else
            echo "false"
        fi
        ;;
        isosceles)
        if [[ $(($2+$3)) -le $4 || $(($3+$4)) -le $2 || $(($2+$4)) -le $3  ]]; then
            echo "false"
        elif [[ $2 -eq $3 ||  $3 -eq $4  || $2 -eq $4 ]]; then
            echo "true"
        else
            echo "false"
        fi
        ;;
        scalene)
        if [[ $(($2+$3)) -le $4 || $(($3+$4)) -le $2 || $(($2+$4)) -le $3  ]]; then
            echo "false"
        elif [[ $2 -ne $3 && $3 -ne $4 && $2 -ne $4 ]]; then
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

