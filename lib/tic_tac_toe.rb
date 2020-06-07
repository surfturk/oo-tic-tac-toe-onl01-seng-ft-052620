require = "pry"

class TicTacToe 
  
  WIN_COMBINATIONS = [
    [0,1,2],  [3,4,5],
    [6,7,8],  [0,3,6],
    [1,4,7],  [2,5,8],
    [0,4,8],  [6,4,2],
    ]
  
def initialize(board = nil)
  @board = board || Array.new(9, " ")
  
end  


def display_board
  
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end  

def input_to_index(string)
 
  string.to_i - 1
  
end  


def move(index, token = "X") 
  @board[index] = token
  
end  

def position_taken?(index)
 !(@board[index].nil? || @board[index] == " ")
    
 end  


def valid_move?(move)
 
  move.between?(0,8) && !position_taken?(move)
  
end  


def turn(move)
  puts "Choose a position between 1-9"
  move.to_i(index)
  if index = valid_move
    index.move
    puts @board
  else
    "Choose a position between 1-9"
  
end  






end  