#!/bin/bash
#https://exercism.org/tracks/bash/exercises/clock/

main()
{
    hour=0
    min="$2"

    

    i=0
    while [ "$i" -le "$1" ]; do
        i=$(($i+1))

        
        if [[ "$i" -lt "1"  ]]; then
            echo "test"

        if [[ "$i" -gt "1"  ]]; then
            hour=$(($hour+1))
        fi

        if [[ "$hour" -eq 24 ]];then
            hour=0
        fi

    done

    echo "hora: $hour"
}

main "$@"
