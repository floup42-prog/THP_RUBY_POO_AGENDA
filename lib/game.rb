require "pry"

class Player
  attr_accessor :name, :life_points
  def initialize(x, y)
    @name =x
    @life_points =y
  end
end

binding.pry
