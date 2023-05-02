#!/bin/bash

# https://exercism.org/tracks/bash/exercises/darts

main()
{
	local numOne=$1
	local numTwo=$2
	absoluteValue;
	getMax;

	if (( $(echo "$max<=1"| bc -l) )); then
		echo "10"
	elif (( $(echo "$max<=5" | bc -l) )); then
		echo "5"
	elif (( $(echo "$max<=10" | bc -l) )); then
		echo "1"
	else
		echo "0"
	fi

}
getMax()
{
	max=$numOne
	if [[ $numOne>$numTwo  ]]; then
		max=$numOne
	else
		max=$numTwo
	fi
}
absoluteValue()
{
	if (( $(echo "$numOne>=0"| bc -l) )); then 
		numOne=$numOne
	else 
		numOne=$(echo "$numOne*-1" | bc)
       	fi


	if (( $(echo "$numTwo>=0"| bc -l) ));then 
		numTwo=$numTwo
	else 
		numOne=$(echo "$numTwo*-1" | bc)
       	fi
}


#getMax "$@"
main "$@"
