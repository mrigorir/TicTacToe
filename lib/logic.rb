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
    @pos = []
    @player_char = player_char
    @user_input = user_input
    @indexes_win = [[0, 4, 8], [0, 1, 2], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]
    
    if array.count(player_char) >= 3
      @array.each.with_index do |el, i|
        @pos << i if el == player_char 
        @pos
      end
      p @pos
     @indexes_win.each do |sub_array|
      if player_char == 'X'
        p 'P1 wins' if sub_array.eql?(@pos)
      elsif player_char == 'O'
        p 'P2 wins' if sub_array.eql?(@pos)
      else
        p 'TIE'
        return false
      end
    end
  end
    
    
    
    
    
    
    
    
    
    
    
    
    
    #@i = 0
    #while @i < @indexes_win.length
      #if @indexes_win[@i].any?(@user_input)
         # @indexes_win[@i].each do |index|
            #p @array
            #if @indexes_win[@i].all?(@array.at(index))
              #@player_char[0]
              #break
            #elsif @array.at(index).all?(@player_char[1])
              #@player_char[1]
              #break
            #else
              #return "TIE"
              #Ebreak
            #end
          #end
        #end
      #@i += 1
    #end
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
