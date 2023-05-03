#!/bin/bash

#https://exercism.org/tracks/bash/exercises/dnd-character
main()
{
    if [[ "$1" == "generate" ]]; then

        str=$(rollDice)
        dex=$(rollDice)
        cons=$(rollDice)
        int=$(rollDice)
        wis=$(rollDice)
        chr=$(rollDice)

        if [[ $(($cons%2)) == 0  ]]; then
            constitutionMod=$((($cons-10)/2)) #round Down
        else
            constitutionMod=$((($cons-10-1)/2)) #round Down
        fi

        hitpoints=$((10+$constitutionMod))
        echo "strength ${str}"
        echo "dexterity ${dex}"
        echo "constitution ${cons}"
        echo "intelligence ${int}"
        echo "wisdom ${wis}"
        echo "charisma ${chr}"
        echo "hitpoints ${hitpoints}"
    else
        cons=$2
        if [[ $(($cons%2)) == 0  ]]; then
            constitutionMod=$((($cons-10)/2)) #round Down
        else
            constitutionMod=$((($cons-10-1)/2)) #round Down
        fi
        echo "$constitutionMod"
    fi
}

rollDice()
{
    val=""

    for (( i=0;i<=3;i++ )); do
        val="$((($RANDOM%6)+1)) ${val}"
    done

    val=$(( $(echo -n "$val" | tr ' ' '\n' | sort -nr | tr '\n' ' ' | cut -c 1)+$(echo -n "$val" | tr ' ' '\n' | sort -nr | tr '\n' ' ' | cut -c 3)+$(echo -n "$val" | tr ' ' '\n' | sort -nr | tr '\n' ' ' | cut -c 5) ))
    echo "${val}"
    
}
main "$@"
