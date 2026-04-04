#!/bin/bash

<<Plumbing

 | -> Sends output of one command as input for another
 > -> Sends an output to a file (overwrite)
 >> -> Append 
 < -> Input Redirect (Take input from a file)
 && or || -> Chain commands
Plumbing


ls | grep ".txt"

cat file.txt | sed 's/error/warning/g'


# Bash will create the file if not exists
echo "Hello World" > test.txt

echo "This will be added" >> test.txt


# Count lines from the file
wc -l < file.txt


# Multi-line input (Does not work with echo)
cat <<EOF > file.txt
This is 
a multi-line text
EOF

# Chain command (Runs only if previous succeeds)
mkdir test && cd test

mkdir test || echo "Failed"


<<example
cat app.log | grep ERROR > errors.log
example
