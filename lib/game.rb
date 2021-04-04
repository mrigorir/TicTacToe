class Game
  attr_accessor :players, :tic_tac_toe
  attr_reader :board, :player_char, :game
  attr_writer :loc, :locations, :usedd

  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @player_char = %w[X O]
    @game = true
    @players = []
    @temp = ''
    @locations = []
    @loc = ''
    @usedd = []
    @move = 0
    @tic_tac_toe = TicTacToe.new
    @arb_i = 0
  end

  def gaming(players)
    @players = players
    puts "#{@players[0]} is going to play with X\n"
    puts "#{@players[1]} is going to play with O\n\n"
    puts "Great ! #{@players[0]} and #{@players[1]} let start the battle !!\n\n\n"

    disply_board
  end

  def disply_board
    position = 0
    while position < @board.length
      if (position % 3).zero?
        puts ''
        print "---+---+---+\n"
      end
      print " #{@board[position]} |"
      position += 1
    end
    puts "\n---+---+---+"
    puts "\n"
  end

  def create_players
    @i = 0
    while @i < 2
      print "Enter pseudo for Player #{@i + 1}: "
      input = gets.chomp
      test = Player.new(input, @player_char[@i])
      @players << test.name
      if @tic_tac_toe.pseudo_empty?(@players[@i])
        while @tic_tac_toe.pseudo_empty?(@players[@i])
          puts "Don't leave player names empty"
          print "Enter pseudo for Player #{@i + 1}: "
          @players[@i] = gets.chomp
        end
      end
      @i += 1
    end
    @players
  end

  # def take_input(wining)
  #   @wining = wining
  #   @temp = gets.chomp
  #   @temp
  # end

  def check_input(player, iteration, state)
    @j = iteration
    @state = state
    print "#{players[@j]}, choose a position from (1-9) to place in the board: "
    @temp = gets.chomp
    @input_user = @temp
    @current_player = player
    if @input_user =~ /[1-9]/ && @input_user.to_i.between?(1, 9) && @input_user.to_i <= @board.length
      @test2 = @input_user.to_i
      @test3 = @tic_tac_toe.taken?(@test2, @usedd) ## => Boolean
      if @test3
        while @test3
          disply_board
          print "#{@current_player}, that spot is not available, please choose another one: "
          @review_input = gets.chomp.to_i
          @reviewer = @tic_tac_toe.analize_input?(@review_input)
          if @reviewer == false
            @test3 = @tic_tac_toe.taken?(@review_input, @usedd)
            if @test3 == false
              print "\n#{@current_player}, the '#{@player_char[@j]}' player has chosen spot ##{@review_input}\n"
              @board[@review_input - 1] = @player_char[@j]
              disply_board
              @temp = @review_input.to_s
            end
            @temp
          elsif @reviewer
            disply_board
            print "Invalid input !\n\n"
            print "#{@current_player}, please choose again. "
            @review_input = gets.chomp.to_i
            @temp = @review_input.to_s if @tic_tac_toe.analize_input?(@review_input) == false
            check_input(@current_player, j)
          end
        end
      else
        print "\n#{@current_player}, the '#{@player_char[@j]}' player has chosen spot ##{@test2}\n"
        @board[@test2 - 1] = @player_char[@j]
        disply_board
      end
    elsif @tic_tac_toe.analize_input?(@input_user)
      disply_board
      print "Invalid input !\n\n"
      print "#{@current_player}, choose a position from (1-9) to place in the board: "
      @temp = gets.chomp
      check_input(@current_player, @j, @state)
    end
    @input_user
  end
end