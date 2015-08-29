def new_board(lines, board_array)

puts lines


  puts """

   |   | 
 #{board_array[0]} | #{board_array[1]} | #{board_array[2]}
---|---|---
   |   |
 #{board_array[3]} | #{board_array[4]} | #{board_array[5]}
---|---|---
   |   | 
 #{board_array[6]} | #{board_array[7]} | #{board_array[8]}
 """
end 
board_position_array = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
current_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

 new_board("Welcome to Tic Tac Toe", board_position_array)
 new_board("The current board is", current_board )
 

def define_marker
 puts "Player 1 do you want x or o"
 player1 = gets.chomp.upcase
end


def player2_marker(p1_marker)
  if p1_marker == "x"
   "o"
  else "x"
  end
end


def set_player_marker
  @player1 = define_marker
  @player2 = player2_marker(@player1)
  puts "Player1 is #{@player1} so player2 is #{@player2}."
end


set_player_marker

puts "Player 1 #{@player1}, please choose square 0 thru 8 for your first move."
square = gets.chomp.to_i
puts " Player1 has choosen #{square}."

current_board[square] = "#{@player1}"
new_board("player (#{@player1}) chose space #{square}", current_board)








