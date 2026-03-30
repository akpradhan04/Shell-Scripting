#!/bin/bash

<<comment
1. All three function calls are valid syntax. 
2. Pamaters are not passed enclosed in () like add(3,4) like other programming languages.
3. return can only Return numbers 0-255. Used to pass status.
Example:
myfunc() {
    return 5
}

myfunc
echo $?   # prints 5


4. To return values use echo. Example provided in division() function below.

Mistakes encountered:
1. function add{ , Here add{ must have space in between
2. echo "$1 + $2' results in "3 + 4"
comment


function add {
	echo $(( $1 + $2 ))
}

sub(){
	echo $(( $1 - $2 ))
}

function multiply() {
echo $(( $1 * $2 ))
}


division() {
	echo $(( $2 / $1 ))
}

add 3 4
sub 10 7
multiply 10 3

result=$(division 10 20)
echo $result
