# DESCRIPTION:
  # An isogram is a word that has no repeating letters, consecutive or non-consecutive.
  # Implement a function that determines whether a string that contains only letters is an isogram.
  # Assume the empty string is an isogram. Ignore letter case.

  # Example: (Input --> Output)

  # "Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

  # isIsogram "Dermatoglyphics" = true
  # isIsogram "moose" = false
  # isIsogram "aba" = false

# My solution
def is_isogram(string)
  result = true
  string.downcase.split("").each do |i|
    if string.downcase.count(i) > 1
      result = false
      break
    else
      result = true
    end
  end
  result
end

# Best one
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end
