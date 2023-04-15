# DESCRIPTION:
  # Rock Paper Scissors
  # Let's play! You have to return which player won! In case of a draw return Draw!.

  # Examples(Input1, Input2 --> Output):

  # "scissors", "paper" --> "Player 1 won!"
  # "scissors", "rock" --> "Player 2 won!"
  # "paper", "paper" --> "Draw!"

# My solution
def rps(p1, p2)
  result = ''
  if p1 == p2
    result = 'Draw!'
  elsif p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock' || p1 == 'rock' && p2 == 'scissors'
    result = 'Player 1 won!'
  else
    result = 'Player 2 won!'
  end
end

# Best one
def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end
