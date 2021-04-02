puts 'P1 wins' if @indexes_win.all?('X')
      puts 'P2 wins' if @indexes_win.all?('O')
      puts 'TIE' if  if @indexes_win.all?('X' || 'O')