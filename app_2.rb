require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "Bienvenu dans mon jeu"
puts "La partie vas commencer !"
puts "DON'T PANIC ;)"

puts "tu va tout d'abort créer ton personage avec cette commande (n'oublie pas de garder les '' !) :"
puts "user = HumanPlayer.new('ton_nom')"
 

binding.pry

player1 = Player.new("Josiane")  
player2 = Player.new("José")

# while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0)

# end