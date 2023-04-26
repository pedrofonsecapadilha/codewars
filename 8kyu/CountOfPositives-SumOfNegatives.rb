# DESCRIPTION:
  # Given an array of integers.

  # Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.
  # 0 is neither positive nor negative.

  # If the input is an empty array or is null, return an empty array.

  # Example
  # For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15], you should return [10, -65].

# My solution
def count_positives_sum_negatives(lst)
  lst.empty? ? result = [] : result = [ lst.count{|i| i > 0} , lst.select{|i| i<0}.sum ]
  result
end

# Best one
def count_positives_sum_negatives(lst)
  return [] if lst.nil? || lst.empty?
  [lst.count(&:positive?), lst.select(&:negative?).reduce(0, :+)]
end
