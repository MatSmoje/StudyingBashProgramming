#!/bin/bash 

# https://exercism.org/tracks/bash/exercises/atbash-cipher/

main()
{
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
    echo "Encoded"
}
decode()
{
    echo "Decoded"
}

main "$@"
