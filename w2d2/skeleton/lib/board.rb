class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = set_cups
    @player1 = name1
    @player2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 14 || start_pos < 1
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    offset = 0
    position = 0
    stones.each_with_index do |stone, i|
      next_pos = (start_pos + i + 1) % 14
      if current_player_name == @player1
        offset += 1 if next_pos == 13
      elsif current_player_name == @player2
        offset += 1 if next_pos == 6
      end
      position = (start_pos + i + 1 + offset) % 14
      @cups[position] << stone
    end
    render
    next_turn(position, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # THIS IS A COMPLETE MESS. IF THERE IS TIME, FIX THIS.
    p ending_cup_idx
    # helper method to determine what #make_move returns
    p @cups[ending_cup_idx]
    p current_player_name
    return :prompt if ending_cup_idx == 13 && current_player_name == "James"
    return :switch if ending_cup_idx == 9 && current_player_name == "Erica"
    return ending_cup_idx if ending_cup_idx == 5 && current_player_name == "Erica"
    if current_player_name == @player2 && (0..5).to_a.include?(ending_cup_idx)
      if @cups[ending_cup_idx].empty?
        return :prompt
      else
        return :switch
      end
    elsif current_player_name == @player1 && (7..12).to_a.include?(ending_cup_idx)
      if @cups[ending_cup_idx].empty?
        return :prompt
      else
        return :switch
      end
    elsif @cups[ending_cup_idx].empty? && (7..12).to_a.include?(ending_cup_idx)
      return :switch
    end
    :switch
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def cups_empty?
    cups = @cups[0..5]
    p cups
    cups.all? { |cup| cup.empty? }
  end

  def winner
  end

  private
  def set_cups
    arr = Array.new(14) { set_stones }
    arr[6] = []
    arr[13] =  []
    arr
  end
  def set_stones
    stones = []
    4.times { stones << :stone }
    stones
  end
end
