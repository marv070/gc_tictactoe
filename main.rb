class Game
def board(message, board_array)
puts message



puts """
  #{board_array[0]} |#{board_array[1]} |#{board_array[2]}  
    |  |  
  __|__|___
    |  |    
  #{board_array[3]} |#{board_array[4]} |#{board_array[5]} 
  __|__|___
    |  |   
  #{board_array[6]} |#{board_array[7]} |#{board_array[8]}
    |  |
  """
 end
 

 
 
 
def board_messages
  board('Welcome to Tic Tac Toe',  board_positions_array)
  board( "Current board is",current_board_array )
end


 def define_marker
  puts "Player 1, please choose x or o"
  player1=gets.chomp.upcase
 end
  
def player2_marker(first_marker)
  if first_marker=="X"
     "O"
  else 
     "X"
  end
  

  end
  
def set_player_markers
  @player1=define_marker
  @player2 =player2_marker(@player1)
  puts "player 1 has chosen #{@player1}. Player 2 is #{@player2}"
end

def marker_valid?(marker)
  if marker=="X" || marker=="O"
    true
  else
    false
  end
end

def player1_square_choice
  puts" Player 1, (#{@player1}) which square 1-9 would you like for your move?"
  square=gets.chomp.to_i
  if valid_space?(square,@current_board_array) == true 
    puts " Player 1 has moved to #{square}."
@current_board_array[square-1] = "#{@player1}"
  board("player 1 (#{@player1})chose space #{square}", @current_board_array)
  else 
    puts "Please make another selection."
  player1_square_choice
  end
end

def player2_square_choice
  puts" Player 2, (#{@player2}) which square 1-9 would you like for your move?"
  square=gets.chomp.to_i
  if valid_space?(square,@current_board_array) == true
    puts " Player 2 has moved to #{square}."
    @current_board_array[square-1] = "#{@player2}"
    board("player 2 (#{@player2})chose space #{square}", @current_board_array)
  else 
    puts "Please make another selection."
  player2_square_choice
  end
  end

#def square_choice?(square_ch)

def play_game
@board_positions_array=["1", "2", "3", "4", "5", "6", "7", "8", "9"]
@current_board_array=[" ", " ", " ", " ", " ", " ", " ", " ", " "]
board("Here are the boards",@board_positions_array)
set_player_markers
 game_loop
 end
 
 def game_loop
  player1_square_choice
  if board_full(@current_board_array)
    puts "game over"
  else 
    player2_square_choice
    if board_full(@current_board_array)
      puts "game over"
    else 
      game_loop
    end
  end
end

def board_full(array)
  if array.include? " "
    false
    else true
    end
end

def valid_space?(space, board)
    space > 0 && space < 10 && board[space-1] == " "
end  


end