#!/bin/bash

# Prompt the user to enter a string
echo "Enter a string to check if it is a palindrome:"
read user_input

# Escape any special characters in the input string
escaped_input=$(printf '%q' "$user_input")

# Use Python to check if the string is a palindrome
python3 <<EOF
input_str = "$user_input"

# Normalize the input by removing spaces, punctuation, and converting to lowercase
normalized_str = ''.join(char.lower() for char in input_str if char.isalnum())

# Check if the normalized string is equal to its reverse
if normalized_str == normalized_str[::-1]:
    print(f"'{input_str}' is a palindrome.")
else:
    print(f"'{input_str}' is not a palindrome.")
EOF


