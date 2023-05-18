# DESCRIPTION:
  # Implement the function unique_in_order which takes as argument a sequence and returns a list of items without
  # any elements with the same value next to each other and preserving the original order of elements.

  # For example:

  # unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
  # unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
  # unique_in_order([1,2,2,3,3])       == [1,2,3]

# My solution
def unique_in_order(iterable)
  if iterable.class == String
    result = iterable.chars
  else
    result = iterable.to_s.gsub!(/\W/, '').split("")
  end

  result.each_with_index do |e, i|
    while e == result[i+1]
      result.delete_at(i+1)
    end
  end

  if iterable[0].class == Integer
    result.map! do |i|
      i.to_i
    end
  end

  result
end

# Best one
def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end
