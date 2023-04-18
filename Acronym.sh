#!/bin/bash


# https://exercism.org/tracks/bash/exercises/acronym

main()
{
	string=${1:$i:1}
	#echo $string

	for (( i=0;i<${#1};i++ )); do
		if [[ $var == True ]] && [[ ${1:$i:1} != " " ]] && [[ ${1:$i:1} != "-"  ]] && [[ ${1:$i:1} != "*"  ]]; then
			string=${string}${1:$i:1}
			var=False
		fi
		if [[ "${1:$i:1}" == " " ]] || [[ "${1:$i:1}" == "-"   ]]; then
			var=True

		fi
	done

	echo ${string^^}



}

main "$@"
