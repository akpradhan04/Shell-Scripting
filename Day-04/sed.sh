#!/bin/bash

<<sed
Stream Editor - In Place Editor

Syntax: sed 'command' file
sed

# Replaces first occurrence of old with new in each line
sed 's/old/new/' file.txt

# Replace all occurrences
sed 's/old/new/g' file.txt

# Edit File In-Place
sed -i 's/hello/hi/g' file.txt

# sed -i.bak 's/hello/hi/g' file.txt (Keep Backup)


# Delete Empty Lines
sed '/^$/d' file.txt

# Text contains /
sed 's|path/to|new/path|g'

<<note
s → substitute
d → delete
i → insert
a → append
note
