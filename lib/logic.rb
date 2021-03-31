class TicTacToe
  attr_accessor :token, :player
  attr_reader :board, :game

  def initialize
    @board = %w[0 1 2 3 4 5 6 7 8]
    @game = true
  end

  def check_input(array, char, player, loc, usedd)
    @board = array
    @char = char
    @player = player
    @loc = loc
    @usedd = usedd
  end

  def same_char(player, token)
    @player = player
    @token = token
  end

  def taken?(pos, array)
    @pos = pos
    @board = array
  end

  private

  def disply_board(array)
    @array = array
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
  def initialize(name, token)
    @name = name
    @token = token
  end
end
