class TicTacToe
  attr_accessor :board
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0,4,8], [2,4,6]]
  def initialize
    @board = []
    9.times do 
      @board.push(" ")
    end 
    @board
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{ @board[2]} " 
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} " 
    puts "-----------" 
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    index = user_input.to_i - 1
    index
  end
  
  def move(index, token = "X")
    @board[index] = token
  end 
  
  def position_taken?(index)
    result = true
    if @board[index] == " "
      result = false 
    end 
    result
  end
    
  def valid_move?(position)
    valid = false 
    if position >= 0 && position < @board.length && @board[position] == " "
      valid = true 
    end 
    valid 
  end
  
  def turn_count
    @board.count{|index| index != " "}
  end
  
  def current_player
    player = "O"
    if turn_count%2 == 0 
      player = "X"
    end 
    player
  end
  
  
  
  def turn 
    puts "To start, choose the place on the grid where you want to play (input a number between 1 and 9)"
    input = gets.chomp
    index = input_to_index(input)
    token = current_player
    if valid_move?(index)
      move(index, token)
      display_board
    else
      turn
    end
  end
  
  def won?
    new_board_array = @board.each_slice(3).to_a
    WIN_COMBINATIONS.each do |win_state|
      if new_board_array.find{|array| array == win_state}
        return array
      else 
        return nil 
      end
    end
  end
  
  def full?
    @board.all?
    
  
#  def construct_win_conditions
#    board.each do |
#      board.each do 
#        board.map do
  
  
end