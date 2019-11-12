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
    
  
#  def construct_win_conditions
#    board.each do |
#      board.each do 
#        board.map do
  
  
end