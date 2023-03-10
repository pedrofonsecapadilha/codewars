# DESCRIPTION:
# Implement a function that accepts 3 integer values a, b, c. The function should return true if
# a triangle can be built with the sides of given length and false in any other case.
# (In this case, all triangles must have surface greater than 0 to be accepted).

# My solution
def is_triangle(a,b,c)
  if (b-c).abs < a && a < (b+c) && (a-c).abs < b && b < (a+c) && (a-b).abs < c && c < (a+b)
    true
  else
    false
  end
end

# Best one
def isTriangle(a,b,c)
  a, b, c = [a, b, c].sort
  a + b > c
end
