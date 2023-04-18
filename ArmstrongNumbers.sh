#!/bin/bash

#https://exercism.org/tracks/bash/exercises/armstrong-numbers

main()
{
	length=${#1} #Length of argument
	total=0

	for (( i=0; i<${#1}; i++ )); do
		total=$((${1:$i:1}**length+total))
	done


	if [[ $1 == $total  ]]; then
		echo true
	else
		echo false
	fi
}
main "$@"
