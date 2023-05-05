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
    state="true"
    sup="$((${#phrase}-1))"
    if [[ ${#phrase}%2 -ne 0  ]]; then 
        state="false"
    fi
    
    for ((i=0;i<${#phrase};i++)); do

        if [[ "${phrase:$i:1}" == "(" ]]; then close=")";
        elif [[ "${phrase:$i:1}" == "{" ]]; then close="}"; 
        elif [[ "${phrase:$i:1}" == "[" ]]; then close="]"; 
        else close=""
        fi

        ${phrase:$i:1}="ñ"
        break
    done
    
    echo "${phrase}"

    if [[ $state != "false" ]]; then 
        echo "true"
    else
        echo "false"
    fi
}
test()
{
 string="[()]()[]"

 for ((i=0;i<${#string};i++));do

    echo "largo string ${#string} - $string"

    if [[ "${#string}" -le 0 ]]; then 
        echo "true"
        break
    fi

    if [[ "${string:$i:1}" == "(" ]]; then close=")";
    elif [[ "${string:$i:1}" == "{" ]]; then close="}"; 
    elif [[ "${string:$i:1}" == "[" ]]; then close="]"; 
    else close=""
    fi
    
    for ((j=$i;j<${#string};j++ )); do
        echo "$j"
        if [[ "${string:$j:1}" == "$close" ]]; then
            echo "Dentro de 2do for $string"
            string="hola"
        fi
    done
 done


}

test "$@"
