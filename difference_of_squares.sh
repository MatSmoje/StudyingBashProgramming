#!/bin/bash

# https://exercism.org/tracks/bash/exercises/difference-of-squares

main()
{
    givenNumber=$2
    squareOfSum=0
    sumOfSquares=0
    diff=0

    for ((i=1;i<=$givenNumber;i++)); do
        squareOfSum=$(($squareOfSum+$i))
        sumOfSquares=$(($sumOfSquares+($i**2)))
    done
    
    squareOfSum=$(($squareOfSum**2))
    diff=$(($squareOfSum-$sumOfSquares))

    case "$1" in
        square_of_sum)
        echo "$squareOfSum"
        ;;
        sum_of_squares)
        echo "$sumOfSquares"
        ;;
        difference)
        echo "$diff"
        ;;
        *)
        echo "error"
    esac

}

main "$@"
