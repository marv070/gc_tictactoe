def new_board(lines)

puts lines

  puts """

   |   | 
 1 | 2 | 3
---|---|---
   |   |
 4 | 5 | 6
---|---|---
   |   | 
 7 | 8 | 9
 """
end 
 new_board("Welcome to Tic Tac Toe")
 new_board("The current board is")
 
def define_marker
 puts "Player 1 do you want x or o"
 player1 = gets.chomp
end


def player2_marker(p1_marker)
  if p1_marker == "x"
   "o"
  else "x"
  end
end


def get_player_marker
  player1 = define_marker
  player2 = player2_marker(player1)
  puts "Player1 is #{player1} so player2 is #{player2}."
end


get_player_marker









