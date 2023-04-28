main()
{
	val=$(binary "$@");
	counter=0
	opt=""

	for (( i=${#val}-1; i>=0; i-- )); do
		if [[ ${val:$i:1} -eq 1 ]]; then 
			if [[ $counter -eq 0 ]]; then
				echo "wink"
			elif [[ $counter -eq 1 ]]; then
				echo "double blink"
			elif [[ $counter -eq 2 ]]; then
				echo "close you eyes"
			elif [[ $counter -eq 3 ]]; then
				echo "jump"
			elif [[ $counter -eq 4 ]]; then 
				echo "Reverse the order of the operations in the secret handshake."
			else
				echo "error..."
			fi
		fi
		counter=$((counter+1))
	done
}
binary()
{
	number="$1"
	while [ $((number/2)) -ne 0  ]
	do
		binaryNumber=$((number%2))
		number=$((number/2))
		result="$result$binaryNumber"
	done
	if [ $number = 1 ]; then
		binaryNumber="1"
		result="$result$binaryNumber"
	fi
	echo $result | rev

}

main "$@"
