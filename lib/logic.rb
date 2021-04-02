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


  # def arbiter(array, user_input , player_char)
  #   @array = array
  #   @player_char = player_char
  #   @user_input = user_input
  #   @indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]

  #   @indexes_win.each do |sub_array|
  #     sub_array.each.with_index do |el, i|
  #       sub_array[i] = @player_char if el == @user_input.to_i
  #     end
  #   end
  #   p @indexes_win
  #   p k
  # end

  def counter

  end

  def arbiter(array, user_input, player_char, countx, counto, arb_i)
    @array = array
    @countx = countx
    @counto = counto
    @player_char = player_char
    @user_input = user_input
    @arb_i = arb_i
    @indexes_win = [[1, 5, 9], [1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
    @i = 0
    if array.count(@player_char) >= 3
      if @arb_i < @indexes_win.length
          @indexes_win[@arb_i].each do |index|
            if @array.at(index - 1) == 'X'
              p 'x'
              countx += 1
              p countx
            elsif @array.at(index - 1) == 'O'
              p 'O'
              counto += 1
              p counto
            else
              p "NOPE"
            end
            if countx == 3
              print "hey"
              break
            elsif counto == 3
              print "Hoy"
              break
            end
          end
          p 'J+'
          countx = 0
          counto = 0 
          p @arb_i
        end
        
    end # @indexes_win[item, sub]
  end


    #   p @pos
    #  @indexes_win.each do |sub_array|
    #   if player_char == 'X'
    #     p 'P1 wins' if sub_array.eql?(@pos)
    #   elsif player_char == 'O'
    #     p 'P2 wins' if sub_array.eql?(@pos)
    #   else
    #     p 'TIE'
    #     return false
    #   end
    # end

    # @i = 0
    # while @i < @indexes_win.length
    #   if @indexes_win[@i].any?(@user_input)
    #      @indexes_win[@i].each do |index|
    #         p @array
    #         if @indexes_win[@i].all?(@array.at(index))
    #           @player_char[0]
    #           break
    #         elsif @array.at(index).all?(@player_char[1])
    #           @player_char[1]
    #           break
    #         else
    #           return "TIE"
    #           Ebreak
    #         end
    #       end
    #     end
    #   @i += 1
    # end

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
