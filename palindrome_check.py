import re

def is_palindrome(s):
    normalized_str = re.sub(r'[^A-Za-z0-9]', '', s).lower()
    return normalized_str == normalized_str[::-1]

def main():
    user_input = input("Enter a string: ")
    if is_palindrome(user_input):
        print(f"The string '{{user_input}}' is a palindrome.")
    else:
        print(f"The string '{{user_input}}' is not a palindrome.")

if __name__ == "__main__":
    main()
    