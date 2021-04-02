class TicTacToe
  attr_accessor :token, :player
  attr_reader :board, :game, :player_char, :loc, :move, :winner
  def initialize 
    @indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    @winner = ""
  end

  def check_input(array, player_char, player, loc, usedd, move)
    @player = player
    @usedd = usedd
  end

  def taken?(pos, array)
    @pos = pos
    @board = array
    return true unless @board.count(@pos).zero? || @board.empty?

    @board << @pos
    false
  end

  def arbiter(array, user_input , player_char)
    @array = array
    @player_char = player_char
    @user_input = user_input
    
    @indexes_win.each do |sub_array|
      sub_array.map.with_index do |el, i|
        sub_array[i] = @player_char if el == @user_input.to_i
        sub_array
      end
      if sub_array.count('X') == 3
        @winner = 'P1 wins.'
        return 'win'
      end
      if sub_array.count('O') == 3
        @winner = 'P2 wins.'
        return 'win'
      end
    end
    return ""   
  end

  private

  def pseudo_empty?(player)
    return true if player.empty?

    player
  end

end

class Player
  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end
end
