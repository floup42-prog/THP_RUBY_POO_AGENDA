require "pry"
require "rufo"

class Player
  attr_accessor :name, :life_points, :bot

  def initialize(x, *v)
    @name = x
    @life_points = 10
    @bot = v 
    @bot << self
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

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(x)
    @name = x
    @life_points = 10
    @weapon_level =1
  end

  def show_state
    puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
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

  def search_weapon
     y = rand(1..6)

    puts "Tu as trouvé une arme de niveau #{y}"

    if y <= weapon_level
      puts "Bordel quelle arme de m... inutile =)"
    else
      puts "wouha quelle p... superbe arme =)"
      @weapon_level = y
    end
  end

  def search_health_pack
    y = rand(1..6)

    case y
    when 1
      puts  "Tu n'as rien trouvé...  sinf"
    when 2..5
      puts  "Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points += 50
      if @life_points > 100
        @life_points =100
      end
    when 6
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
          @life_points +=80
          if @life_points > 100
            @life_points = 100
          end
    else
      "Dam what are you doing bro !"
    end
  end

end