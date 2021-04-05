class TicTacToe
  attr_reader :board, :game, :player_char, :loc, :move, :state, :token

  def initialize
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
    if @input =~ /[a-zA-z0-9]/ || @input.nil? || @input.empty? || @input == '0'
      return true
    end

    false
  end

  def arbiter(temp, player_char, players, wining)
    @player_char = player_char
    @user_input = temp
    @playername = players
    @indexes_win = wining
    @indexes_win.each do |sub_array|
      sub_array.map.with_index do |el, index|
        sub_array[index] = @player_char if el == @user_input.to_i
        sub_array[index]
      end
      next unless sub_array.all?('X') && @county <= 9 || sub_array.all?('O') && @county <= 9

      @state = "#{@playername} wins the game. Congrats!"
      @game = false
      return @game
    end
    if @county == 9
      @state = 'It\'s a TIE. Good luck next time!'
      @game = false
      return @game
    end
    @county += 1
    return '' if @county <= 9

    return '' if @county <= 9
  end
end

private

class Player
  attr_accessor :name, :token

  def initialize(name, token)
    @name = name
    @token = token
  end
end
