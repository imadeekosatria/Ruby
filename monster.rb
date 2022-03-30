# monster.rb
class Monster
  attr_accessor :name
  attr_accessor :hitpoint
  attr_accessor :attack_point
  def initialize(name, hitpoint, attack_point)
    self.name = name
    self.hitpoint = hitpoint
    self.attack_point = attack_point
  end

  def to_s
    if self.hitpoint > 0
      "#{self.name}[#{self.hitpoint}]"
    else
      "#{self.name}[X]"
    end
  end

  def attack(player, pokemon, target, opponent)
    target.monster[opponent].take_damage(pokemon.attack_point)
    pokemon.take_damage(0.5 * target.monster[opponent].attack_point)

    puts "#{player.capitalize()}'s #{self.name} attacks opponent's #{target.name} deals #{self.attack_point.to_f} damage and takes #{0.5 * target.monster[opponent].attack_point} damage\n\n"
  end

  def take_damage(amount)
    self.hitpoint -= amount
  end
end