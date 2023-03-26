# DESCRIPTION:
  # Your task is to sum the differences between consecutive pairs in the array in descending order.

  # Example
  # [2, 1, 10]  -->  9
  # In descending order: [10, 2, 1]

  # Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9

  # If the array is empty or the array has only one element the result should be 0
  # (Nothing in Haskell, None in Rust).

# My solution
def sum_of_differences(arr)
  result = []
  arr.reverse.each_with_index do |e, i|
    if i < (arr.size - 1)
      result << ((e) - (arr.reverse[i+1]))
    end
  end
  result.sum
end

# Best one
def sum_of_differences(arr)
  arr.empty? ? 0 : arr.max - arr.min
end
