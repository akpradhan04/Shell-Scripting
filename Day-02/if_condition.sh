#!/bin/bash

<<comment
1. [[ ... ]] → Recommended for general conditions (safe, modern)
- Use $variable
- Use operators like: -eq, -ne, -gt, -lt
Example:
if [[ $num -eq 0 ]]; then
2. (( ... )) → Best for arithmetic (numbers)
- Do NOT use $ before variables
- Use C-style operators: ==, !=, >, <
Example:
if (( num == 0 )); then
3. [ ... ] → POSIX / older style
- Requires careful quoting
Example:
if [ "$num" -eq 0 ]; then
4. Even/Odd Check using modulus
- % gives remainder
Example:
if (( num % 2 == 0 )); then
echo "Even"
fi
5. Common mistakes
❌ if (( $num -eq 0 )) # wrong
❌ if [ num % 2 -eq 0 ] # wrong
✔ if (( num == 0 )) # correct
✔ if [[ $((num % 2)) -eq 0 ]] # correct
Rule of thumb:
→ Use (( )) for math
→ Use [[ ]] for conditions
→ Avoid [ ] unless portability is needed
comment

read -p "Enter a number: " num

if [[ $num -eq 0 ]];
then
	echo "$num is Zero."
elif (( $num % 2 == 0 ));
then
	echo "$num is Even"
else
	echo "$num is Odd"
fi
