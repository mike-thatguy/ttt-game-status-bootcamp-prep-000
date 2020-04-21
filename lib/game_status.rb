# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  filled_x = board.each_index.select { |i| i == "X" }
  filled_o = board.each_index.select { |i| i == "O" }
  x_won = WIN_COMBINATIONS.detect(filled_x)
  o_won = WIN_COMBINATIONS.detect(filled_o)
  return x_won if !x_won.nil?
  return o_won if !o_won.nil?
  return nil
end

def full?(board)
  filled_either = board.select { |i| i == "X" || i == "O" }
  filled_either.length == 9
end

def over?(board)
  full?(board) || !(won?(board).nil?)
end

def draw?(board)
  full?(board) && won?(board).nil?
end

def winner(board)
  winning_combo = won?(board)
  return nil if winning_combo.nil?
  return board[winning_combo[0]]
end
