require "bundler"
Bundler.require

require_relative "lib/game"
require_relative "lib/player"

puts "Bienvenu dans mon jeu"
puts "La partie vas commencer !"
puts "DON'T PANIC ;)"

puts "Tu va tout d'abort créer ton personage quelle est ton nom ?"
y = gets.chomp
user = HumanPlayer.new(y)

player1 = Player.new("Josiane")
player2 = Player.new("José")

while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  puts "Quelle action veux-tu effectuer ?"
  puts ""
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner "
  puts ""
  puts "attaquer un joueur en vue :"
  puts "0 - Josiane a 10 points de vie"
  puts "1 - José a 10 points de vie"

  menu = gets.chomp

  if menu == "s"
    user.search_health_pack
  end
  if menu == "0"
    user.attacks(player1)
  end
  if menu == "1"
    user.attacks(player2)
  end
  if menu == "a"
    user.search_weapon
  end
end
puts "BRAVO !"