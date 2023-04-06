# DESCRIPTION:
  # Complete the solution so that it splits the string into pairs of two characters.
  # If the string contains an odd number of characters then it should replace the missing
  # second character of the final pair with an underscore ('_').

  # Examples:

  # * 'abc' =>  ['ab', 'c_']
  # * 'abcdef' => ['ab', 'cd', 'ef']

# My solution
def solution(str)
  str.size % 2 == 0 ? str.scan(/../) : (str + '_').scan(/../)
end

# Best one
def solution str
  (str + '_').scan /../
end
