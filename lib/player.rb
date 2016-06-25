class Player

  attr_reader :name, :hp

  DEFAULT_HP = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage(amount)
    @hp -= amount
  end

end
