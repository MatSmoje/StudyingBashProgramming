#!/bin/bash

#https://exercism.org/tracks/bash/exercises/scrabble-score

main()
{
	word=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	points=0
	
	for (( i=0; i<${#word}; i++ )); do
		if [[ "${word:$i:1}" =~ [aeioulnrst] ]]; then 
			points=$((points+1))
		elif [[ "${word:$i:1}" =~ [dg] ]]; then
			points=$((points+2))
		elif [[ "${word:$i:1}" =~ [bcmp] ]]; then
			points=$((points+3))
		elif [[ "${word:$i:1}" =~ [fhvwy] ]]; then
			points=$((points+4))
		elif [[ "${word:$i:1}" =~ [k] ]]; then
			points=$((points+5))
		elif [[ "${word:$i:1}" =~ [jx] ]]; then
			points=$((points+8))
		elif [[ "${word:$i:1}" =~ [qz] ]]; then
			points=$((points+10))		
		fi

	done
	echo $points

}
main "$@"
