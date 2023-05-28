# DESCRIPTION:
  # Given a string dot notation, you should return a chained hash object, in the same order of this string:

  # Example:

  # transforms("kata.dot.notation", "final value")
  # Produces

  # {kata: {dot: {notation: "final value"}}}

# My solution (Fiz metade e depois ChatGPT)
def transform(notation, final_value)
  splitNotation = notation.split('.')
  result = {}
  current_hash = result

  splitNotation.each_with_index do |e, i|
    if i == splitNotation.length - 1
      current_hash[e.to_sym] = final_value
    else
      current_hash[e.to_sym] = {}
      current_hash = current_hash[e.to_sym]
    end
  end
  result
end

# Best one
def transform(notation, final_value)
  notation.split('.').reverse.inject(final_value){|hash, key| {key.to_sym => hash}}
end
