require_relative 'monster'
class Player < Monster
  attr_accessor :player
  attr_accessor :monster
  def initialize(monster, player)
    self.monster = monster 
    self.player = player
  end

  def state
    puts "#{self.player.capitalize()} :"
    self.monster.each do |monster|
      if monster != self.monster[self.monster.length] && monster != self.monster[0]
        print ", "
      end
      print monster 
    end
    puts ' '
  end

  def serang(pokemon, target, opponent)
    # target.monster[1].take_damage(pokemon.attack_point)
    # pokemon.take_damage(0.5 * target.monster[1].attack_point)
    pokemon.attack(self.player, pokemon, target, opponent)
    # puts "#{monster} & #{target}"
    # monster.attack(self.player, target)
    
    # puts "#{self.player.capitalize()} #{monster} #{target}"
  end
end