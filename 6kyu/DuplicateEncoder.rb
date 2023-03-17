# DESCRIPTION:
  # The goal of this exercise is to convert a string to a new string where each character
  # in the new string is "(" if that character appears only once in the original string, or ")"
  # if that character appears more than once in the original string. Ignore capitalization
  # when determining if a character is a duplicate.

# My solution
result = []
word.downcase.split("").each do |i|
  if word.downcase.count(i) > 1
    result << ")"
  else
    result << "("
  end
end
result.join

# Best one
def duplicate_encode(word)
  word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
end
