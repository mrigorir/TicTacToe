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
    return true unless @board.count(@pos).zero? || @board.empty?

    @board << @pos
    false
  end

  def arbiter(array, user_input, player_char)
    @array = array
    @player_char = player_char

    @user_input = user_input.to_i
    @indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    @i = 0
    while @i < @indexes_win.length
      if @indexes_win[@i].any?(@user_input)
        @indexes_win[@i].each do |index|
          p array.each do |arr_element|
            if array.find_index_of(arr_element) == index
              p "he"
            end
          end
        end
      end
      @i += 1
    end
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
