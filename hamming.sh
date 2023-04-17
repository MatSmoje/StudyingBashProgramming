#!/bin/bash


# https://exercism.org/tracks/bash/exercises/hamming
main()
{
	#echo ${#1}
	#echo ${#2}

	if [[ $# != 2 ]]; then
		echo "Usage: hamming.sh <string1> <string2>"
		exit 1
	elif [[ ${#1} != ${#2} ]]; then
                echo "strands must be of equal length"
                exit 1
	else
		count=0
		for (( i=0; i<${#1}; i++ )); do
			if [[ "${1:$i:1}" != "${2:$i:1}" ]]; then #"" para detectar ?
				count=$((count+1))
			fi
		done
		echo $count
				
        fi



}

main "$@"

