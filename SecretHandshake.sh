main()
{
	val=$(binary "$@");
	counter=0
	opt=""

	for (( i=${#val}-1; i>=0; i-- )); do
		if [[ ${val:$i:1} -eq 1 ]]; then 
			if [[ $counter -eq 0 ]]; then
				opt="wink,"
			elif [[ $counter -eq 1 ]]; then
				opt="${opt}double blink,"
			elif [[ $counter -eq 2 ]]; then
				opt="${opt}close your eyes,"
			elif [[ $counter -eq 3 ]]; then
				opt="${opt}jump"
			elif [[ $counter -eq 4 ]]; then 
				opt=$(echo $opt | awk -F"," '{for(i=NF;i>1;i--)printf "%s,",$i;print $1}')
			else
				echo "error..."
			fi
		fi
		counter=$((counter+1))
	done
	if [[ ${opt:${#opt}-1:1} == , ]];then
		echo ${opt:0:-1}
        elif [[ ${opt:0:1} == , ]];then
            echo ${opt:1:${#opt}}

	else
		echo $opt

	fi
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
	if [[ $number -eq 1 ]]; then
		binaryNumber="1"
		result="$result$binaryNumber"
	fi
	echo $result | rev

}

main "$@"
