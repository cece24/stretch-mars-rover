#rover

#states
#x position
#y position
# direction

#behaviours
#read instructions
#rotate
#move forward 1 in its current direction

class Rover

  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_position = y_position
    @direction = direction
  end

  def x_position
    @x_position
  end

  def y_position
    @y_position
  end

  def direction
    @direction
  end

  def read_instructions(user_input)
    user_input.each_char do |character|
      if character == "L"
        turn("L")
      elsif character == "R"
        turn("R")
      else
        move
      end
    end
  end

  def move
    if @direction == "N"
      @y_position += 1
    elsif @direction == "S"
      @y_position -= 1
    elsif @direction == "E"
      @x_position += 1
    else
      @x_position -= 1
    end
  end

  def turn(left_or_right)
    if left_or_right == "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      else
        @direction = "S"
      end
    else
      if @direction == "N"
        @direction = "E"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "E"
        @direction = "S"
      else
        @direction = "N"
      end
    end
  end

end

rover_1 = Rover.new(1, 4, "E")

puts "x: #{rover_1.x_position}, y: #{rover_1.y_position}, direction: #{rover_1.direction}"
rover_1.move
puts "x: #{rover_1.x_position}, y: #{rover_1.y_position}, direction: #{rover_1.direction}"
rover_1.turn("R")
puts "x: #{rover_1.x_position}, y: #{rover_1.y_position}, direction: #{rover_1.direction}"

puts "Please provide the starting x position: "
x_position = gets.to_i
puts "Please provide the starting y position: "
y_position = gets.to_i
puts "Please provier the starting direction (N/E/S/W): "
direction = gets.chomp

rover_2 = Rover.new(x_position, y_position, direction)
puts rover_2.direction
