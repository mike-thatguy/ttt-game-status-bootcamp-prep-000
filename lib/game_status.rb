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
  case true
  when x_won.empty? && o_won.empty? then
  end
end

def full?(board)
  filled_either = board.each_index.select { |i| i == "X" || i == "O" }
  filled_either.length == 9
end

def over?(board)
  filled_idx = board.each_index.select { |i| i == "X" }
  WIN_COMBINATIONS.includes?(filled_idx)
end
