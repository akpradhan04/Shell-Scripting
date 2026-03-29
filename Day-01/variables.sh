#!/bin/bash

# Variable name is defined
name="John Doe"

# Parameter expansion done using $ followed by variable. $name
echo "Good Morning! My Name is $name."

# For in-built parameters, they need to be encapsulated in ().
echo "Today is $(date)."


<< comment
Using the 'read' command can input from users. 
Here -p stands from prompt.
Using -s is for silent inputs (like passwords) etc.

This can also be written as:

echo "Enter your address: "
read address

comment

read -p "Enter your address: " address

echo "Address: $address"


read -sp "Enter your password: " password

# The password still is a variable and can be displayed in the terminal.
echo "Password: $password"
