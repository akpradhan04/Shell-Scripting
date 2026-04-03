#!/bin/bash

<<comment
Basic Syntax: find [path] [options] [expression]
comment


find . -name "general_commands.sh"

# Case Insensitive Search
find . -iname "General_Commands.sh"

#Using Wildcards
find .. -name "*.sh"

<<wildcards
ls *.txt
ls file*
ls *file*
ls file?.txt
ls file[123].txt
ls file[a-z].txt
ls file[!1].txt
wildcards


# Find by Type (f: Files, d: Directories)
find . -type f 
find . -type d -empty


echo "===Combined Conditions===="

# Delete files
find . -name "*.log" -delete


<<exec
Execute after finding file
-exec function {} \;

{} is used as placeholder for files
\; or + used as a closer.

\; runs each command multiple times, + runs the command once for multiple files

exec

find . -name "*.txt" -exec cat {} \;


# Delete file usign exec
find . -name "*.log" -exec rm {} +
