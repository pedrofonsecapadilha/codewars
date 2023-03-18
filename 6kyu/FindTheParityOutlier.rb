# DESCRIPTION:
  # You are given an array (which will have a length of at least 3, but could be very large) containing integers.
  # The array is either entirely comprised of odd integers or entirely comprised of even integers except for
  # a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# My solution - ChatGPT
def find_outlier(integers)
  odd_count = 0
  even_count = 0
  odd_num = 0
  even_num = 0
  integers.each do |num|
    if num.even?
      even_count += 1
      even_num = num
    else
      odd_count += 1
      odd_num = num
    end
    if odd_count > 0 && even_count > 0 && (odd_count > 1 || even_count > 1)
      return odd_count > even_count ? even_num : odd_num
    end
  end
  return odd_count > even_count ? even_num : odd_num
end

# Best one
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end
