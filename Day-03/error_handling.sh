#!/bin/bash

<<comment
Error Handling Via IF logic
- Create directory function is created.
- if create_directory in the if statement calls the function
- First run the directory is created, so for success the exit code is 0 i.e $? = 0, which means !0 => 1, so if condition does not run.
- Second iteration, since the directory is already created, the if condition is run.
comment

create_directory(){
	mkdir demo_directory
}


if ! create_directory;then
	echo "The directory has already been created"
	exit 1
fi

echo "This statement only runs, if the process is uninterrupted"
