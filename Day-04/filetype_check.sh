# Regular file check
if [ -f file.txt ]; then
  echo "It's a regular file"
fi


# Directory Check
if [ -d myfolder ]; then
  echo "It's a directory"
fi

# Exists Check
if [ -e file.txt ]; then
  echo "File exists (any type)"
fi


# Variable Empty Check
var=""

if [ -z "$var" ]; then
  echo "Empty"
fi


# Non Empty Variable Check
if [ -n "$var" ]; then
  echo "Not empty"
fi
