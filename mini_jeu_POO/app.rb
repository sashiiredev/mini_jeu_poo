require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'



player1 = Player.new("Josiane",10)
player2 = Player.new("José", 10)
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts"#######################"
puts "Passons à la phase d'attaque :"
player1.attacks(player2)
player2.attacks(player1)
puts"#######################"
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts"#######################"
puts "Passons à la phase d'attaque :"
player1.attacks(player2)
player2.attacks(player1)
puts"#######################"
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts"#######################"
puts "Passons à la phase d'attaque :"
player1.attacks(player2)
player2.attacks(player1)
puts"#######################"
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts"########################"





