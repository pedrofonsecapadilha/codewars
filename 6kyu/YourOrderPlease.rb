# DESCRIPTION:
# Your task is to sort a given string. Each word in the string will contain a single number.
# This number is the position the word should have in the result.
# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
# If the input string is empty, return an empty string.
# The words in the input String will only contain valid consecutive numbers.

# My solution
def order(words)
  result = []
  words.split().each_with_index do |w, i|
    position = w.chars.sort(&:casecmp).first
    result[position.to_i - 1] = words.split()[i]
  end
  result.join(" ")
end

# Best one
def order(words)
  words.split.sort_by{ |w| w[/\d/] }.join(' ')
end
