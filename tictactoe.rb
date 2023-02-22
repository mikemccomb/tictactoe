class Tictactoe
  def initialize(hash)
    @hash = hash
    @turn = 1
    @win = false
    @player = ""
    @array = []
  end

  def hash
    return @hash
  end

  def turn
    return @turn
  end

  def player
    return @player
  end

  def array
    return @array = [
             [@hash[1], @hash[2], @hash[3]],
             [@hash[4], @hash[5], @hash[6]],
             [@hash[7], @hash[8], @hash[9]],
           ]
  end

  def win_row
    array.each do |row|
      if row[0] == row[1] && row[0] == row[2]
        @win = true
      end
    end
  end

  def win_column
    index = 0
    while index < 3
      if array[0][index] == array[1][index] && array[0][index] == array[2][index]
        @win = true
      end
      index += 1
    end
  end

  def win_diagonal
    if array[0][0] == array[1][1] && array[0][0] == array[2][2]
      return @win = true
    elsif array[2][0] == array[1][1] && array[2][0] == array[0][2]
      return @win = true
    end
  end

  def win
    win_row
    win_column
    win_diagonal
    if @win
      @turn += 11
      puts "* * * Congratulations, Player #{player}! You won! * * *"
    end
  end

  def player
    if turn.odd?
      return @player = "X"
    end
    return @player = "O"
  end

  def board
    array.each do |item|
      puts item.join
    end
  end

  def game
    puts "* * * Let's play Tic-Tac-Toe! * * *"
    while @turn < 10
      board
      puts "* * * Player #{player}, pick a block. * * *"
      block = gets.chomp.to_i
      if @hash[block] == " [#{block}] "
        @hash[block] = " [#{player}] "
        @turn += 1
      else
        puts "* * * #{@hash[0]} * * *"
      end
      win
    end
    if @turn == 10 && @win == false
      board
      puts "* * * Darn, it looks like nobody won. * * *"
    end
  end
end

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

test = Tictactoe.new(hash)
test.game
