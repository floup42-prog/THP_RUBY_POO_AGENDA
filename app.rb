require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Bob")  
player2 = Player.new("José")
# puts "init"
while player1.life_points > 0 && player2.life_points >0
    player1.attacks(player2)
    player2.attacks(player1)
    puts ""
    if player1.life_points <= 0 || player2.life_points <= 0
        # puts "ok"
        break
    end
    # puts "end"
end