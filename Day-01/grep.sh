#!/bin/bash

<<grep
Search for patterns inside text

Syntax: grep [options] "pattern" file
grep

# Case insensitive
grep -i "error" file.txt

# -n Show line Number


# Recursive Search
grep -i "error" .


# Combine with find
find . -name "*.log" -exec grep "ERROR" {} +

# Used with Regex
grep "^[0-9]$" file.txt
