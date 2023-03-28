# DESCRIPTION:
  # A pangram is a sentence that contains every single letter of the alphabet at least once.
  # For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
  # because it uses the letters A-Z at least once (case is irrelevant).

  # Given a string, detect whether or not it is a pangram.
  # Return True if it is, False if not.
  # Ignore numbers and punctuation.

# My solution
def pangram?(string)
  result = false
  [*('a'..'z')].each do |i|
    if i.count(string.downcase.gsub(/\W/,"").chars.sort.join()) > 0
      result = true
    else
      result = false
      break
    end
  end
  result
end

# Best one
def panagram?(string)
  ('a'..'z').all? { |x| string.downcase.include? (x) }
end
