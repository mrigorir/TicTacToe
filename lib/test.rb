index_win = [[0, 4, 8], [0, 1, 2][0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]]

storint = %w[0 1 2 3 4 5 6 7 8]

print "#{player}, choose a position from (0-8) to place in the board: "
loc = gets.chomp

if loc =~ /[0-8]/ && loc.to_i.between?(0, 8) && loc.to_i <= array.length
  loc = loc.to_i
  store[loc] = char
end