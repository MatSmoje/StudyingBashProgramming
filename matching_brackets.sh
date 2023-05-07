#!/bin/bash

main()
{
    local phrase="$1"
    phrase=$(normalize);
    echo "Frase a analizar $phrase"
    result=$(analize)
    echo "$result"
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
    string=$phrase
    for ((i=0;i<=${#string};i++));do
        if [[ "$flag" == "1" ]]; then
            i=0
            flag=0
        fi
        if [[ "${string:$i:1}" == "(" ]]; then close=")";
        elif [[ "${string:$i:1}" == "{" ]]; then close="}"; 
        elif [[ "${string:$i:1}" == "[" ]]; then close="]"; 
        else close="none"
        fi
        i2=$(($i+1))
        if [[ "${string:$i2:1}" == "$close" ]]; then 
            string="${string:0:$i}${string:$i2+1:${#string}}"
            flag="1"
        fi
    
     done

    echo "${#string} - $string"
    if [[ ${#string} -eq 0 ]]; then 
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
