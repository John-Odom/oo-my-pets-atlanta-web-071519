class Cat
  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []
  def initialize(name, owner, mood="nervous")
    @name=name
    @owner=owner
    @mood=mood
    @@all << self
    owner.cats << self
  end

  def self.all
    @@all
  end

end