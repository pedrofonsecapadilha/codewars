# DESCRIPTION:
  # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  # The sum of these multiples is 23.
  # Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
  # Additionally, if the number is negative, return 0 (for languages that do have them).
  # Note: If the number is a multiple of both 3 and 5, only count it once.
  # Courtesy of projecteuler.net (Problem 1)

# My solution
def solution(number)
  mult3 = []
  mult5 = []
  (1..(number - 1)).each do |i|
    if i % 3 == 0
      mult3 << i
    elsif i % 5 == 0
      mult5 << i
    end
  end
  result = (mult3+mult5).uniq.sum
end

# Best one
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end
