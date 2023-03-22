# DESCRIPTION:
  # Given an integral number, determine if it's a square number:

  # In mathematics, a square number or perfect square is an integer that is the square of an integer;
  # in other words, it is the product of some integer with itself.

  # The tests will always use some integral number, so don't worry about that in dynamic typed languages.

# My solution
def is_square(x)
  if x >= 0
    if Integer.sqrt(x) * Integer.sqrt(x) == x
      true
    else
      false
    end
  else
    false
  end
end

# Best one
def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end
