# DESCRIPTION:
  # Complete the function that accepts a string parameter, and reverses each word in the string.
  # All spaces in the string should be retained.

  # Examples
  # "This is an example!" ==> "sihT si na !elpmaxe"
  # "double  spaces"      ==> "elbuod  secaps"

# My solution
def reverse_words(str)
  result = []
  str.gsub(' ', ' - ').split.each do |i|
    result << i.reverse
  end
  result.join().gsub('-', ' ')
end

# Best one
def reverse_words(str)
  str.gsub(/\S+/, &:reverse)
end
