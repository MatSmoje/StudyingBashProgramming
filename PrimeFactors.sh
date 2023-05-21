#!/bin/bash

#https://exercism.org/tracks/bash/exercises/prime-factors

main()
{
    givenNumber=$1
    auxGivenNumber="$givenNumber"
    count=2
    final=""
    mult=1

    while [ "$mult" -ne "$givenNumber" ]; do

        if [[ $(($auxGivenNumber%$count)) -eq 0 ]]; then
            final="$final$count "
            auxGivenNumber=$(($auxGivenNumber/$count))
            mult=$(($mult*$count))
        else
            count=$(($count+1))
        fi
        
    done
        
    echo "$final" | sed s/\ $//

}
main "$@"
