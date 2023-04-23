#!/bin/bash

#Bob: https://exercism.org/tracks/bash/exercises/bob

main()
{
        local message=$(echo "$1" | tr -d "[:space:]")
        if silence; then
                echo "Fine. Be that way!"
        elif yelling && question; then
                echo "Calm down, I know what I'm doing!"
        elif yelling; then
                echo "Whoa, chill out!"
        elif question; then
                echo "Sure."
        else
                echo "Whatever."

        fi

}
silence()
{
        [[ -z $message ]]
}
question()
{
        [[ ${message: -1} == "?" ]]

}
yelling()
{
        [[ ${message} == *[[:upper:]]* && ${message} != *[[:lower:]]*  ]]
}

main "$@"
