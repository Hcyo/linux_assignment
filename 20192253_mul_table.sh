#!/bin/bash
if [ $# -ne 2 ]
then
	echo "Usage: $0 <number_of_rows> <number_of_columns>"
	exit 1
fi

if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]
then
	echo "Both parameters should be positive integers"
	exit 1
fi

rows=$1
columns=$2

for i in $(seq 1 $rows)
do
	for j in $(seq 1 $columns)
       	do
		product=$((i * j))

		printf "%d*%d=%-4d" "$i" "$j" "$product"

		if [ $j -ne $columns ]
	       	then
			echo -ne "\t"
		fi
	done

	echo
done
