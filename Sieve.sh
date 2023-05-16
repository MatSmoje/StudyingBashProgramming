#!/bin/bash

# https://exercism.org/tracks/bash/exercises/sieve
# Wikipedia Sieve https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes


main()
{
    vals=($(seq 2 1 $1)) 
    local output=($(seq 2 1 $1))
    local j

    for j in ${vals[@]}
    do
        if [[ $(inlist) -eq 1 ]]; then
            continue
        fi

        counter=0
        cnt=0
        for i in "${vals[@]}"
        do
            if [[ "$i" -le "$j" ]]; then
                counter=1
                cnt=$(($cnt+1))
                continue
            elif [[ "$j" -eq "$counter" ]]; then
                unset 'output[cnt]'
                counter=0
            fi
            counter=$(($counter+1))
            cnt=$(($cnt+1))
        done
    done
    echo "${output[@]}"
}

inlist()
{
    notFound=1
    for z in ${output[@]}
    do
        if [[ $z == $j  ]]; then
            notFound=0
            break
        fi
    done
    echo "$notFound"
}

main "$@"
