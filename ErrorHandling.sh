#!/bin/bash

main () {

    if [[ $# == 1 ]]; then
        echo "Hello, $1"
    elif [[ $# > 1 ]] || [[ $#==0 ]]; then
        echo "Usage: error_handling.sh <person>"
        exit 2
    fi
}

main "$@"

