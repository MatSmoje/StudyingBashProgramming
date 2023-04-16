#!/bin/bash

main()
{
    if [[ $1 == "" ]] || [[ $# == 0 ]]; then
        echo "One for you, one for me."
    else
        echo "One for $1, one for me."
    fi
}

main "$@"
