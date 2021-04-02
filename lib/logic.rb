class TicTacToe
  attr_accessor :token, :player
  attr_reader :board, :game, :player_char, :loc, :move, :winner
  def initialize
    @indexes_win = [[1, 5, 9], [1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
    @winner = ''
  end

  def check_input(_array, _player_char, player, _loc, usedd)
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

  def pseudo_empty?(player)
    @player = player
    if @player.empty? || @player.nil?
      true
    else
      false
    end
  end

  def arbiter(array, user_input, player_char, playername)
    @array = array
    @player_char = player_char
    @user_input = user_input
    @playername = playername

    @indexes_win.each do |sub_array|
      sub_array.map.with_index do |el, i|
        sub_array[i] = @player_char if el == @user_input.to_i
        sub_array
      end
      if sub_array.all?('X')
        @winner = "#{@playername} wins the game. Congrats!"
        return 'win'
      end
      if sub_array.all?('O')
        @winner = "#{@playername} wins the game. Congrats!"
        return 'win'
      end
    end
    ''
  end
  end

class Player
  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end
end
