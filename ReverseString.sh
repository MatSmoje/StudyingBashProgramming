#!/bin/bash

#https://exercism.org/tracks/bash/exercises/reverse-string

main()
{
	output=""
	for (( i=${#1};i>=0;i-- )); do
		output="$output${1:$i:1}"
	done
	echo "$output"
}
main "$@"
