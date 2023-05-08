#!/bin/bash

#https://exercism.org/tracks/bash/exercises/luhn/

main()
{
    local string
    string=$(echo "$1" | tr -d ' ')
    output=$(validation);
    res=0    
    if [[ $((${#string}%2)) -eq 0 ]]; then 
        mode="2"
    else
        mode="1"
    fi
    if [[ "$output" != "false" ]]; then
        for (( i=0;i<${#string};i++ )); do
            if [[ "$mode" == "2" ]]; then
                if [[ $(($i%2)) -eq 0  ]] ; then
                    if [[ $((${string:$i:1}*2)) -gt 9 ]]; then
                        subRes=$(((${string:$i:1}*2)-9))
                     else 
                         subRes=$(((${string:$i:1}*2)))
                     fi
                 else
                     subRes="${string:$i:1}"
                fi
                    res=$(($res+$subRes))
            else
                if [[ $(($i%2)) -ne 0  ]] ; then
                    if [[ $((${string:$i:1}*2)) -gt 9 ]]; then
                        subRes=$(((${string:$i:1}*2)-9))
                     else 
                         subRes=$(((${string:$i:1}*2)))
                     fi
                 else
                     subRes="${string:$i:1}"
                fi
                    res=$(($res+$subRes))
            fi
        done
        
        if [[ $(($res%10)) -eq 0 ]]; then
            output="true"
        else
            output="false"
        fi
    fi

    echo "$output"
}
validation()
{
    
    if [[ ! "$string" =~ ^[0-9]+$ ||${#string} -le 1 ]]; then
        echo "false"
    fi
}

main "$@"
