def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  index = input_to_index(input)
  
  isValid = valid_move?(board, index)
  
  if (isValid == true)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


#prints out the current state of the board for the user.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#return true if the index is within the correct range of 0-8
def valid_move? (board, index)
	taken = position_taken?(board, index)
	if ((index < 0 || index  > 9) )
		return false
	elsif taken == false
		return false
	end
	return true
end

# return flase if the index is currently unoccupied by an X or O
def position_taken? (board, index)
	if (board[index] == " " || board[index] == "" || board[index] ==nil)
		return true
	end
	return false
end


def input_to_index(input)
	return input.to_i - 1
end

#places the inputed charcter into the board array
def move(board, index, value="X")
	board[index] = value
end
  