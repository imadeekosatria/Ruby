require_relative 'monster'
require_relative 'player' # replace this with your class name

phpkachu = Monster.new('Phpkachu', 80, 50)
sqlrtle = Monster.new('Sqlrtle', 100, 20)
cppmander = Monster.new('Cppmander', 40, 80)
bashtoise = Monster.new('Bashtoise', 60, 60)
torterraform = Monster.new('Torterraform', 120, 10)

# Instantiate the objects of the class that model your players here

# Add monsters to your players here
## Player 1 should have phpkachu, cppmander, and torterraform
monster1 = [phpkachu, cppmander.clone, torterraform]
player1 = Player.new(monster1, "player 1")
## Player 2 should have sqlrtle, cppmander, and bashtoise
monster2 = [sqlrtle, cppmander.clone, bashtoise]
player2 = Player.new(monster2, "player 2")
# Print the current stats of each players here
player1.state
puts ''
player2.state
puts ''
puts '=======================Turn 1======================='
puts ''
# phpkachu.attack(cppmander)
# Make your Player 1's phpkachu attacks Player 2's cppmander here
player1.serang(player1.monster[0], player2, 1)
# Print the current stats of each players here
player1.state
puts ''
player2.state

# Make your Player 2's bashtoise attacks Player 1's cppmander here
player2.serang(player2.monster[2], player1, 1)
# Print the current stats of each players here
player1.state
puts ''
player2.state




