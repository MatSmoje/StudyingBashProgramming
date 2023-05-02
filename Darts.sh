#!/bin/bash

# https://exercism.org/tracks/bash/exercises/darts

main()
{
	        
        local totalArgs
        local args
        totalArgs=$#
        args=$@

        ArgsValidator;

        max=$(echo "sqrt($1^2+$2^2)" | bc -l)

        if (( $(echo "$max<=1"| bc -l) )); then
                echo "10"
        elif (( $(echo "$max<=5" | bc -l) )); then
                echo "5"
        elif (( $(echo "$max<=10" | bc -l) )); then
                echo "1"
        else
                echo "0"
        fi
}
ArgsValidator()
{
	 if [[ $totalArgs -ne 2 ]]; then
            echo "Error"
            exit 1
        fi

        for argz in $args; do
            if [[ ! "$argz" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
                echo "Error - ${argz}"
                exit 1
            fi
        done
}

main "$@"









































