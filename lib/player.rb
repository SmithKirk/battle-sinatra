class Player

  attr_reader :name, :hp

  DEFAULT_HP = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 1
  end

end
