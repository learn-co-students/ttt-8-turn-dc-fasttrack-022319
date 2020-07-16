

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) != position_taken?(board, index)
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
  return true
  end
end

def input_to_index(str)
  str.to_i - 1
end

def move(board, input_to_index, player_character = "X")
  board[input_to_index] = "#{player_character}"
end

#turn 
  #gets input --> convert input to index
  #if index is valid --> make move for input
  #else --> ask for input again until you get a valid input
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
  move(board, index, "X")
  display_board(board)
  else turn(board)
  end
end


