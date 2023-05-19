#!/bin/bash

# https://exercism.org/tracks/bash/exercises/atbash-cipher/

main()
{
    local word=$(echo "$2" | tr -d ' ' |  tr [:upper:] [:lower:] | tr -dc [:alnum:])
   # echo "$word"

    if [[ "$1" == "encode" ]]; then
        output=$(encode)
    elif [[ "$1" == "decode" ]]; then
        output=$(decode)
    else
        output="Incorrect Arg"
        exit 1
    fi

    echo "$output"
}
encode()
{
    encode=({a..z})
    decode=({z..a})
    output=""

    for (( i=0;i<${#word};i++ )); do
        chr="${word:$i:1}"
        for (( j=0;j<${#decode[@]};j++ )); do
            if [[ "$chr" == "${decode[@]:$j:1}" ]]; then
                add="${encode[@]:$j:1}"
            elif [[ "$chr" =~ [0-9] ]]; then
                add="$chr"
                break
            elif [[ ! "$chr" =~ [a-z]|[0-9] ]]; then 
                add=""
                break
            fi
        done
        if [[ "$(((i+1)%5))" -eq 0 && "$i" -lt $((${#word}-1)) ]]; then
            add="$add "
        fi
        output="$output$add"
    done
    echo "$output"
}
decode()
{
    encode=({a..z})
    decode=({z..a})
    output=""

    for (( i=0;i<${#word};i++ )); do
        chr="${word:$i:1}"
        for (( j=0;j<${#encode[@]};j++ )); do
            if [[ "$chr" == "${encode[@]:$j:1}" ]]; then
                add="${decode[@]:$j:1}"
            elif [[ ! "$chr" =~ [a-z] ]]; then
                add="$chr"
                break
            fi
        done
        output="$output$add"
    done
    echo "$output"
}

main "$@"
