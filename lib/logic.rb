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

  def arbiter(array, user_input , player_char)
    @array = array
    @player_char = player_char
    @array = [0,1,2,3,4,5,6,7,8]
    @array2 = []
    @array3 = []
    @array4 = []
    @array5 = []
    @array2 << array[0..2]
    @array3 << array[3..5]
    @array4 << array[6..8]
    array5.push(array2, array3, array4)
    array6 = array5.flatten(1)

    p "hello"
    @user_input = user_input.to_i
    @indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    @i = 0
    while @i < @indexes_win.length
      if @indexes_win[@i].any?(@user_input)
          @indexes_win[@i].each do |index|
            p @array
            if @indexes_win[@i].all?(@array.at(index)) #if board.select.each_with_index {|item, index| index == }
              @player_char[0]
              break
            elsif @array.at(index).all?(@player_char[1])
              @player_char[1]
              break
            else
              return "TIE"
              break
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
