# DESCRIPTION:
  # Your task, is to create a NxN spiral with a given size.
  # For example, spiral with size 5 should look like this:

  # 00000
  # ....0
  # 000.0
  # 0...0
  # 00000
  # and with the size 10:

  # 0000000000
  # .........0
  # 00000000.0
  # 0......0.0
  # 0.0000.0.0
  # 0.0..0.0.0
  # 0.0....0.0
  # 0.000000.0
  # 0........0
  # 0000000000
  # Return value should contain array of arrays, of 0 and 1, with the first row being composed of 1s.
  # For example for given size 5 result should be:

  # [[1,1,1,1,1],[0,0,0,0,1],[1,1,1,0,1],[1,0,0,0,1],[1,1,1,1,1]]
  # Because of the edge-cases for tiny spirals, the size will be at least 5.

  # General rule-of-a-thumb is, that the snake made with '1' cannot touch to itself.

# My solution
def spiralize(size)
  spiral = Array.new(size) { Array.new(size, 0) }
  directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]
  direction_index = 0
  x = 0
  y = 0

  (1..size*size).each do |num|
    spiral[x][y] = 1

    next_x = x + directions[direction_index][0]
    next_y = y + directions[direction_index][1]

    if (next_x < 0 || next_x >= size || next_y < 0 || next_y >= size || spiral[next_x][next_y] == 1)
      direction_index = (direction_index + 1) % 4
      next_x = x + directions[direction_index][0]
      next_y = y + directions[direction_index][1]

      if (next_x < 0 || next_x >= size || next_y < 0 || next_y >= size || spiral[next_x][next_y] == 1)
        break
      end
    end

    x = next_x
    y = next_y
  end

  spiral
end

# Best one
