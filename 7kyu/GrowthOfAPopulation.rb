# DESCRIPTION:
# In a small town the population is p0 = 1000 at the beginning of a year.
# The population regularly increases by 2 percent per year and moreover 50 new inhabitants per year
# come to live in the town. How many years does the town need to see its population greater or equal to
# p = 1200 inhabitants?

# My solution
def nb_year(p0, percent, aug, p)
  years = 0
  while p0 < p
    p0 = p0 + (p0 * percent / 100).to_i + aug
    years = years + 1
  end
  years
end

# Best one
def nb_year(p0, percent, aug, p)
  # your code
  n = 0
  percent = percent * 0.01

  while p0 < p
    p0 += (p0 * percent).to_i + aug
    n += 1
  end

  return n
end
