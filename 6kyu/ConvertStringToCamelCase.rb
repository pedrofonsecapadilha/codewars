# DESCRIPTION:
  # Complete the method/function so that it converts dash/underscore delimited words into camel casing.
  # The first word within the output should be capitalized only if the original word was capitalized
  # (known as Upper Camel Case, also often referred to as Pascal case). The next words should be always capitalized.

  #   Examples
  #   "the-stealth-warrior" gets converted to "theStealthWarrior"
  #   "The_Stealth_Warrior" gets converted to "TheStealthWarrior"
  #   "The_Stealth-Warrior" gets converted to "TheStealthWarrior"

# My solution
def to_camel_case(str)
  result = []
  str.gsub(/(\W|_)/," ").split(' ').each_with_index do |e, i|
    if i == 0
      result << e
    else
      result << e.capitalize
    end
  end
  result.join()
end

# Best one
def to_camel_case(str)
  str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end
