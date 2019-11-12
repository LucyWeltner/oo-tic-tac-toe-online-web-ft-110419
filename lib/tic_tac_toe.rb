class TicTacToe
  attr_accessor :board
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0, 0, 0], [1, 1, 1], [2, 2, 2], [0,4,8], [2,4,6]]
  def initialize
    @board = []
    9.times do 
      @board.push(" ")
    end 
  end
  
  def display_board
    puts "#{board[0]} | #{board[1]} | #{ board[2]} \n #{board[3]} | #{board[4]} | #{board[5]} \n #{board[6]} | #{board[7]} | #{board[8]
  end
  
  def input_to_index(user_input)
    board[user_input.to_i - 1]
  end
  
  def move(index, token = "X")
    board[index] = token
  end 
  
  def position_taken?(index)
    result = true
    if board[index] == " "
      result = false 
    end 
    result
  end
    
  def valid_move?(position)
    valid = false 
    if position >= 0 && position < board.length && board[position] == " "
      valid = true 
    end 
    valid 
  end
  
  def turn 
  
#  def construct_win_conditions
#    board.each do |
#      board.each do 
#        board.map do
  
  
end