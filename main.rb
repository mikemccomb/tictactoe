require "./tictactoe.rb"
require "./win.rb"

hash = {
  0 => "Choose again",
  1 => " [1] ",
  2 => " [2] ",
  3 => " [3] ",
  4 => " [4] ",
  5 => " [5] ",
  6 => " [6] ",
  7 => " [7] ",
  8 => " [8] ",
  9 => " [9] ",
}

tictactoe = Tictactoe.new(hash)
puts "* * * Let's play Tic-Tac-Toe! * * *"
tictactoe.game
