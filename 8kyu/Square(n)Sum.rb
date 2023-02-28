# DESCRIPTION:
# Complete the square sum function so that it squares each number passed into it and then sums the results together.
# For example, for [1, 2, 2] it should return 9 because 1² + 2² + 2² = 9

# My solution
def square_sum(numbers)
  result = 0
  numbers.each do |n|
    result = result + (n * n)
  end
  result
end

# Best one
def squareSum(numbers)
  numbers.map {|n| n*n}.reduce(:+)
end
