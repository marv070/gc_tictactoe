 require_relative"main.rb"
require "minitest/autorun"

class Main_test< Minitest::Test

def test_if_player_1_is_x_player_2_is_o
assert_equal("O",Game.new.player2_marker("X"))
end

def test_if_player_1_is_O_player_2_is_X
assert_equal("X",Game.new.player2_marker("O"))
end

def test_if_player_has_chosen_valid_input
assert_equal(true,Game.new.marker_valid?("X"))
assert_equal(true,Game.new.marker_valid?("O"))
assert_equal(false,Game.new.marker_valid?("S"))
end

def test_for_full_board
assert_equal(true, Game.new.board_full(["X","O","X","O","X","O","X","O","X"]))
assert_equal(false, Game.new.board_full([" "]))
end

def test_for_valid_space
assert_equal(true,Game.new.valid_space?(1, [" "]))
assert_equal(true,Game.new.valid_space?(9,["x", "O", "X","0","X","O", "X", "O", " "]))
assert_equal(false,Game.new.valid_space?(15,["x", "O", "X","0","X","O", "X", "O", "X"]))
assert_equal(false,Game.new.valid_space?(5, [" ", " ", " "," ","X"," ", " ", " ", " "]))
assert_equal(false,Game.new.valid_space?(6,["x", "O", "X","0","X","O", "X", "O", "X"]))
end


#def test_for_valid_square_choice
#assert_equal(true, square_choice?(*[1..9]))
#end













end