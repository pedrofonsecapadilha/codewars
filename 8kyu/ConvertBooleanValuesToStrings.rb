# DESCRIPTION:
  # Complete the method that takes a boolean value and return a "Yes" string for true,
  # or a "No" string for false.

# My solution
def bool_to_word bool
  bool ? "Yes" : "No"
end

# Best one
def bool_to_word bool
  bool ? 'Yes' : 'No'
end
