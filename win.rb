require "./tictactoe"

class Win < Tictactoe
  def win_row
    array.each do |block|
      if block[0] == block[1] && block[0] == block[2]
        @win = true
      end
    end
  end

  def win_column
    index = 0
    while index < 3
      if array[0][index] == array[1][index] && array[0][index] == array[2][index]
        return @win = true
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
end
