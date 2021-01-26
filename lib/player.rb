require "pry"
require "rufo"

class Player
  attr_accessor :name, :life_points

  def initialize(x)
    @name = x
    @life_points = 10
  end

  def show_state
    puts "#{name}, à #{life_points} de vie!"
  end

  def gets_damage(x)
    @life_points -= x.to_i
    if @life_points <= 0
      "YOU ARE DIE!"
    end
  end

  def compute_damage
    return rand(1..6)
  end

  def attacks(x)
    y = compute_damage
    puts "joueur #{name} atack le joueur #{x.name}"
    x.life_points = (x.life_points) - y
    puts "#{name} lui inflige #{y} points de dommages"
    if x.life_points <= 0
      "YOU ARE DIE!"
    end
  end
end

# class HumanPlayer
#   attr_accessor :name, :life_points, :weapon_level

#   def initialize(x)
#     @name = x
#     @life_points = 100
#     @weapon_level = 1
#   end
# end

# binding.pry

  # def compute_damage
  #   rand(1..6) * @weapon_level
  # end

  # def show_state_human
  #   return "le joueur #{name}, à #{life_points} de vie! A une arme de level #{weapon_level}"
  # end

  # def compute
  #   return rand(1..6)
  # end

#   def search_weapon
#     y = compute
#     puts "Tu as trouvé une arme de niveau #{y}"

#     #comparaison des 2 armes
#     if test
      
#     else 
      
#     end 

#     return "Tu as trouvé une arme de niveau #{y}"
#   end

# end

