#!/bin/bash

<<comment
Mistakes encountered:
1. num = $(( num + 1)), spacing issues initially
2. while [[ $(( num % 2 )) -eq 0 && $num -le 10 ]]
This command only echoes 0 as when increment as 1, the modulus condition is false and the loop breaks.
comment

num=0

while [[ $num -le 10 ]]
	do
		echo $num
		num=$(( num + 1 ))
	done
