require_relative 'palyer'
require_relative 'game'

player1 = Player.new("Marvin",90)
player2 = Player.new("Hans")
player3 = Player.new("Timo",60)

ga = Game.new("Knuckleheads")
ga.add_player(player1)
ga.add_player(player2)
ga.add_player(player3)

ga.play