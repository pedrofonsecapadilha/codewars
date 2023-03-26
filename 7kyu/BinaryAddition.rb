# DESCRIPTION:
  # Implement a function that adds two numbers together and returns their sum in binary.
  # The conversion can be done before, or after the addition.

  # The binary number returned should be a string.

  # Examples:(Input1, Input2 --> Output (explanation)))

  # 1, 1 --> "10" (1 + 1 = 2 in decimal or 10 in binary)
  # 5, 9 --> "1110" (5 + 9 = 14 in decimal or 1110 in binary)

# My solution
def add_binary(a,b)
  sum = (a+b)
  result = []
  until sum == 0
    result << sum % 2
    sum = sum / 2
  end
  result.join.reverse
end

# Best one
def add_binary(a,b)
  (a+b).to_s(2)
end
