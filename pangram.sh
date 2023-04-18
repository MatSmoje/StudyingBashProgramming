#!/bin/bash

#Pangram: https://exercism.org/tracks/bash/exercises/pangram

main()
{
	comparador="abcdefghijklmnopqrstuvwxyz"
	val=${1,,}
	#echo "${comparador//a}" delete "a" from $comparador
	for ((i=0;i<${#1};i++));do
		if [[ $comparador == *"${val:$i:1}"* ]]; then
			comparador="${comparador//"${val:$i:1}"}"
		fi
	done
	if [[ $comparador == ""  ]];then
		echo true
	else
		echo false
	fi

}
main "$@"
