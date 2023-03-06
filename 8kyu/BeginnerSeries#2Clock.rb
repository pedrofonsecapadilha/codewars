# Description
# Clock shows h hours, m minutes and s seconds after midnight.
# Your task is to write a function which returns the time since midnight in milliseconds.
# Example:
# h = 0
# m = 1
# s = 1
# result = 61000

# My solution
def past(h, m, s)
  (((h*3600)+(m*60)+(s))*1000)
end

# Best one
def past(h, m, s)
  (h * 3600 + m * 60 + s) * 1000
end
