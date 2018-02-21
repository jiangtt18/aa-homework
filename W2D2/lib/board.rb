# 12  11  10  9  8  7
# [13]                   [6]
#      0   1   2  3  4  5
# 6 13 are non store cups
#0-5 my  0 1 2 -------67 skip 13 side is 2
#7-12 is the other one skip 6 side is 1
require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      next if i == 6 || i == 13
      4.times {|n| cup << :stone}
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos <= 0 || start_pos >= 13
  end

  def make_move(start_pos, current_player_name)
    num_of_stones = @cups[start_pos].length
    count = 1


    @cups[start_pos] = []
    debugger
    while count <= num_of_stones
      ending_cup_idx = start_pos + count
      #reset the cup index once it goes over one circle
      # line 39 set ending_cup_idx again line 42 is useless once comes to the loop again 
      ending_cup_idx = 0 if ending_cup_idx == 14
      if ending_cup_idx == 6
        @cups[6] << :stone if current_player_name == @name1
      elsif ending_cup_idx == 13
        @cups[13] << :stone if current_player_name == @name2
      else
        @cups[ending_cup_idx] << :stone
      end
      count += 1
    end

    render
    next_turn(ending_cup_idx)

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    cup = @cups[ending_cup_idx]
    if cup.count == 1
      :switch
    elsif ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    else
      ending_cup_idx
    end
  end




  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} ||
    @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    if player1_count == player2_count
      :draw
    else
      player1_count > player2_count ? @name1 : @name2
    end
  end


end



  p board = Board.new("a","b")
  p board.make_move(12,'a')
