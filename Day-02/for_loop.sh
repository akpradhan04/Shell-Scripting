#!bin/bash

<<comment
For Loop
comment

for i in 1 2 3 4 5
	do
		echo "Number: $i"
	done


for (( num = 1; num <= 5; num++ ))
	do	
		mkdir "Folder$num"
	done
