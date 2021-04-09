require_relative './modules'

class TicTacToe
  attr_reader :board, :game, :player_char, :loc, :move, :state, :token

  def initialize
    @winner = ''
    @county = 1
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
    return true if @input =~ /[1-9]/ && @input.to_i.between?(1, 9)

    false
  end

  def arbiter(temp, player_char, players, wining)
    @user_input = temp
    @player_char = player_char
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
  end
end
