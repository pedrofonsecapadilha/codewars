# DESCRIPTION:
  # Write an algorithm that takes an array and moves all of the zeros to the end,
  # preserving the order of the other elements.

  # moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

# My solution
def moveZeros(arr)
  zeros = arr.count(0)
  arr.delete(0)
  zeros.times do
    arr << 0
  end
  return arr
end

# Best one
def moveZeros(arr)
  zeros = arr.count(0)
  arr.delete(0)
  arr.fill(0, arr.size, zeros)
end

def moveZeros(arr)
  arr.sort_by{|num|  num == 0 ? 1 : 0}
end
