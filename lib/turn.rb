def display_board(board)
  puts " #{board [0]} " + "|" + " #{board [1]} " + "|" + " #{board [2]} "
  puts "-----------"
  puts " #{board [3]} " + "|" + " #{board [4]} " + "|" + " #{board [5]} "
  puts "-----------"
  puts " #{board [6]} " + "|" + " #{board [7]} " + "|" + " #{board [8]} "
end

 def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_int = input_to_index(user_input)
  if !(input_int >= 0 && input_int < 10)
    turn(board)
  end
  move(board, input_int)
  display_board(board)
end

 def input_to_index(input)
    input = input.to_i 
    input -= 1
end

 def valid_move?(board, index)
  if index >= 0 && index < 10  
    return true
  else
    return false 
  end
end

 def move (board, index, char = "X")
    if valid_move?(board, index) == true
      board[index] = char
    end
end