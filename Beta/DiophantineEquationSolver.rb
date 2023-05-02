# DESCRIPTION:
  # We have to solve the Diophantine Equation:

  # x² + 3y² = z³

  # So, x, y and z, should be strictly positive integers (x, y, z > 0). This equation has a certain number
  # of solutions if the value of z is limited.

  # Let's say we want to know the number of solutions when z is under or equal 10 (z ≤ 10).

  # The equation given above has 3 solutions and are:

  #  x     y     z         Verified equation         x + y + z
  #  4     4     4      4² + 3*4² = 4³ (64 = 64)        12
  # 10     9     7     10² + 3*9² = 7³ (343 = 343)      26
  # 14     7     7     14² + 3*7² = 7³ (343 = 343)      28
  # Implement a brute force algorithm that given an upper bound z_max ≤ 600 may find the number of total solutions
  # having z ≤ z_max. Besides, it should output the solutions with the maximum possible value of z
  # (and obviously less or equal to z_max). They should be sorted by the value of x+y+z. If some solutions have the same sum,
  # sort them by x decreasing.

  # Let's see some examples of our dioph_solver()

  # dioph_solver(10) == [3, [[10, 9, 7], [14, 7, 7]]]

  # dioph_solver(15) == [6, [[26, 13, 13], [35, 18, 13]]]
  # Have a good and productive time!

# My solution
  # Minha ideia era iterar o z..zmax e dentro dele ir fazendo as contas com X fixo depois com Y fixo,
  # todos os valores que se enquadrassem na equação iria adicionando ao result, mas não consegui fazer.
  # Testei o ChatGPT que fez algo parecido com meu raciocínio, mas a solução deles não funciona.
  # Só retorna a primeira array que satisfaz a equação.

# Best one
  # Só tinha 3 soluções e nenhuma avaliada com Best One, a seguir uma que funciona!
def dioph_solver(z_max)
  ans = []
  lim = Math.sqrt(z_max**3).to_i
  for z in 1 .. z_max
    (1..).each do |y|
      x2 = z**3 - 3*y**2
      break if x2 < 0
      x = Math.sqrt(x2).to_i
      ans << [x, y, z] if not x.zero? and x*x == x2
    end
  end
  n = ans.size
  mz = ans.max_by { |(x, y, z)| z }[2]
  ans.filter! { |(x, y, z)| z == mz }
  ans.sort! do |a, b|
    if a.sum != b.sum
      a.sum <=> b.sum
    else
      b <=> a
    end
  end
  [n, ans.map { |x| x.sort.reverse } ]
end
