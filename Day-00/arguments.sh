#!/bin/bash

<<comment
Arguments can be passed when running the bash script

Example: bash arguments.sh "John Doe" "America"

$0 is reserved for the script name i.e arguments.sh
$1, $2 are the first and second argumens respectively.
comment

echo "Running : $0"
echo "Hello, $1"
echo "Address : $2"
