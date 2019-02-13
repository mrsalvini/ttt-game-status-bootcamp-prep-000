# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each { |key|
    if key.all? { |index| board[index] == "X" } || key.all? { |index| board[index] == "O" }
      return key
    end
  }
  return false
end

def full?(board)
  board.each { |square|
    if !(square == "X" || square == "O")
      return false
    end
  }
  return true
end

def draw?(board)
  return (!won?(board) and full?(board))
end

def over?(board)
  return (won?(board) or full?(board))
end

def winner(board)
  if won?(board)
#    puts won?(board)
#    puts board[3]
#    puts board[won?(board)[0]]
    return board[won?(board)[0]]
  end
end
