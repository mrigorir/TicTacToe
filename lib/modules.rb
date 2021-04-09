module GameMethods
  def self.gaming(players, board)
    puts "#{players[0]} is going to play with X\n"
    puts "#{players[1]} is going to play with O\n\n"
    puts "Great ! #{players[0]} and #{players[1]} let start the battle !!\n\n\n"

    disply_board(board)
  end

  def self.disply_board(board)
    position = 0
    while position < board.length
      if (position % 3).zero?
        puts ''
        print "---+---+---+\n"
      end
      print " #{board[position]} |"
      position += 1
    end
    puts "\n---+---+---+"
    puts "\n"
  end

  def self.actual_board(input_user, board, player_char, player)
    current_player = player
    print "\n#{current_player}, the '#{player_char}' player has chosen spot ##{input_user}\n"
    board[input_user - 1] = player_char
    disply_board(board)
  end

  def self.create_players(player_char, players, tic_tac_toe)
    i = 0
    while i < 2
      print "Enter pseudo for Player #{i + 1}: "
      input = gets.chomp
      test = Player.new(input, player_char[i])
      players << test.name
      if tic_tac_toe.pseudo_empty?(players[i])
        while tic_tac_toe.pseudo_empty?(players[i])
          puts "Don't leave player names empty"
          print "Enter pseudo for Player #{i + 1}: "
          players[i] = gets.chomp
        end
      end
      i += 1
    end
    players
  end

  def self.check_input(player)
    print "#{player}, choose a position from (1-9) to place in the board: "
    temp = gets.chomp
    if temp =~ /[1-9]/ && temp.to_i.between?(1, 9)
      input_user = temp.to_i
    else
      false
    end
  end
end
