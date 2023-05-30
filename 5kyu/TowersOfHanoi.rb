# DESCRIPTION:
  # Towers of Hanoi is a game where there are 3 pegs, which we will call "A", "B" and "C".
  # Peg A starts with X number of discs, each disc is smaller than the disc underneith.

  # The game is to move all the discs from A to C, 1 at a time, without ever having a disc on top of a smaller disc.

  # You are given the number of discs initially on peg A, and you must return the shortest list of moves to get all
  # the discs to C. A move is an array of 2 items, the peg the disc is moving from and the peg it's moving too.
  # ['A', 'C'] means move from peg A to C.

  # e.g.

  # Hanoi.new(1).moves => [['A', 'C']]
  # Hanoi.new(2).moves => [['A', 'B'], ['A', 'C'], ['B', 'C']]
  # The number of discs will be 0 < n < 10

# My solution (NÃO CONSEGUI, PRECISO ESTUDAR RECURSIVIDADE!)
class Hanoi
  def initialize(n)
    @num_discs = n
  end

  def moves
    move_discs(@num_discs, 'A', 'C', 'B')
  end

  private

  def move_discs(n, source, target, auxiliary)
    if n == 1
      return [[source, target]]
    else
      moves = []
      moves.concat(move_discs(n - 1, source, auxiliary, target))
      moves.push([source, target])
      moves.concat(move_discs(n - 1, auxiliary, target, source))

      return moves
    end
  end
end

# Best one
class Hanoi
  def initialize(n)
    @num_discs = n
    @result = []
  end

  def moves
    hanoi(@num_discs,"A","C","B")
    @result
  end

  def hanoi(n, a, c, b)
    if n != 0
      hanoi(n-1, a, b, c)
      @result << ["#{a}","#{c}"]
      hanoi(n-1, b, c, a)
    end
  end
end
