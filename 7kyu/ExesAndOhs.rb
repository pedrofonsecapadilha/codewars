# DESCRIPTION:
  # Check to see if a string has the same amount of 'x's and 'o's.
  # The method must return a boolean and be case insensitive.
  # The string can contain any char.

  # Examples input/output:

  # XO("ooxx") => true
  # XO("xooxx") => false
  # XO("ooxXm") => true
  # XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
  # XO("zzoo") => false

# My solution
countX = 0
countO = 0
str.split("").each do |i|
  if i.downcase == "x"
    countX += 1
  elsif i.downcase == "o"
    countO += 1
  end
end

if countX == countO
  true
else
  false
end

# Best one
  str.downcase.count('x') == str.downcase.count('o')
