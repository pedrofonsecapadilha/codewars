# DESCRIPTION:
    # Write a function that accepts an array of 10 integers (between 0 and 9), that returns
    # a string of those numbers in the form of a phone number.

    # Example
    # create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
    # The returned format must be correct in order to complete this challenge.

    # Don't forget the space after the closing parentheses!Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

    # Example
    # create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
    # The returned format must be correct in order to complete this challenge.

    # Don't forget the space after the closing parentheses!

# My solution
def create_phone_number(n):
    n = [str(element) for element in n]
    x = ''.join(n)
    return f"({x[:3]}) {x[3:6]}-{x[6:]}"

# Best one
def create_phone_number(n):
	return "({}{}{}) {}{}{}-{}{}{}{}".format(*n)