class TicTacToe
  attr_writer :player
  attr_reader :board, :game, :player_char, :loc, :move, :winner, :token, :player

  def initialize
    @indexes_win = [[1, 5, 9], [1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
    @winner = ''
    @county = 1
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
    return true if @player.empty? || @player.nil?

    false
  end

  def analize_input?(input)
    @input = input
    p @input
    return true if @input =~ /[a-zA-z0-9]/ || @input.nil? || @input.negative? || @input > 9 || @input == 0 || @input == "0"

    false
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
      if sub_array.all?('X') && @county <= 9
        @winner = "#{@playername} wins the game. Congrats!"
        return 'win'
      elsif sub_array.all?('O') && @county <= 9
        @winner = "#{@playername} wins the game. Congrats!"
        return 'win'
      end
    end
    if @county == 9

      @winner = 'It\'s a TIE. Good luck next time!'
      return 'end'
    end
    @county += 1

    return '' if @county <= 9

    ''
  end
end

private

class Player
  attr_reader :name, :token
  attr_writer :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end
end