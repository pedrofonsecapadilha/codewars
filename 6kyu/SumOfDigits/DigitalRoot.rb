# DESCRIPTION:
  # Digital root is the recursive sum of all the digits in a number.

  # Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

  # Examples
  #     16  -->  1 + 6 = 7
  #    942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
  # 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
  # 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

# soma = 0
#   while (n > 0) do
#   r = n % 10
#   n = (n - r) / 10
#   soma = soma + r
#   end
#   if (soma > 9)
#     soma2 = 0
#     while (soma > 0) do
#     r = soma % 10
#     soma = (soma - r) / 10
#     soma2 = soma2 + r
#     end
#     return soma2
#   else
#   return soma

# My solution
def digital_root(n)
  while (n.to_s.size) > 1 do
    n = n.to_s.split('').map(&:to_i).sum
  end
  return n
end

# Best one
def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end
