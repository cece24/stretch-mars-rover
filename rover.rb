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
    @dirction = direction
  end

  def read_instructions(user_input)

  end

  def move
    
  end

  def turn

  end

end

rover_1 = Rover.new(1, 4, "E")
