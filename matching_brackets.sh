#!/bin/bash

main()
{
    local phrase="$1"
    phrase=$(normalize);
    echo "La palabra a analizar es: $phrase"
    result=$(analize)
    echo "$result"
    #for ((i=0;i<=${#1};i++)); do
    #    if [[ ${1:$i:1} =~ [\[\{\(] ]]; then
    #        if [[ ${1:$((i+1)):1} =~ [\]\}\)] ]]; then
    #            echo "${1:$i:1} ${1:$((i+1)):1}"
    #        fi
    #    fi
    #done




}
normalize()
{
    normalizado=""

    for ((i=0;i<=${#phrase};i++)); do
        if [[ "${phrase:$i:1}" =~ [\]\(|\{|\[|\)|\}] ]]; then 
            normalizado="$normalizado${phrase:$i:1}"
        fi
    done
    echo "$normalizado"
}
analize()
{
    echo "Test $phrase test"
}

main "$@"
