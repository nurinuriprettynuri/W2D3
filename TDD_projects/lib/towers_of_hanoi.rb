class TowersOfHanoi
  attr_accessor :stacks

  def initialize
    @stacks = Array.new(3) { Array.new }
    @stacks[0] = [3, 2, 1]
  end

  def run
    until won?
      begin
        print "Please select a tower: "
        from_tower = gets.chomp.to_i
        raise if @stacks[from_tower].empty?
      rescue
        puts "This tower is empty. Try again."
        retry
      end

      begin
        print "Which tower would you like to move it to? "
        to_tower = gets.chomp.to_i
        raise if !valid_move?(to_tower)
      rescue
        puts "You can't put a larger disc ona smaller disc."
        retry
      end

      move(from_tower, to_tower)
    end
  end

  def move(from_tower, to_tower)
    current_disc = @stacks[from_tower].pop
    @stacks[to_tower] << current_disc
  end

  def won?
    @stacks[1] == [3, 2, 1] || @stacks[2] == [3, 2, 1]
  end

  def valid_move?(from_tower, to_tower)
    current_disc = @stacks[from_tower].last
    return true if @stacks[to_tower].empty?
    current_disc < @stacks[to_tower].last
  end

  def display

  end
end

# towers = TowersOfHanoi.new
# towers.run