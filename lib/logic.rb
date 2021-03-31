class TicTacToe
  attr_accessor :token, :player
  attr_reader :board, :game, :player_char, :loc, :move
  def initialize; end

  def check_input(array, player_char, player, loc, usedd, move)
    @player = player
    @usedd = usedd
  end

  def taken?(pos, array)
    @pos = pos
    @board = array
    return unless @board.count(@pos).zero? || @board.empty?

    @board << @pos
    false
  end

  private

  def pseudo_empty?(player)
    return true if player.empty?

    player
  end

  def arbiter(array, current_token)
    @array = array
    @current_token = current_token
    index_win = [[0, 4, 8], [0, 1, 2][0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    i = 0
    while i < index_win.length
      if index_win[i].all?(find_index(current_token))
      end
    end
  end
end

class Player
  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end
end
