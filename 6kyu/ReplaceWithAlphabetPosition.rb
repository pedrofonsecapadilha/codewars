# DESCRIPTION:
  # Welcome.
  # In this kata you are required to, given a string, replace every letter with its position in the alphabet.
  # If anything in the text isn't a letter, ignore it and don't return it.

  # "a" = 1, "b" = 2, etc.

  # Example
  # alphabet_position("The sunset sets at twelve o' clock.")
  # Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )

# My solution (chat GPT 😯)
def alphabet_position(text)
  alphabet = ('a'..'z').to_a
  positions = []

  text.downcase.each_char do |char|
    if alphabet.include?(char)
      position = alphabet.index(char) + 1
      positions << position
    end
  end

  positions.join(' ')
end

# Best one
def alphabet_position(text)
  text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end
