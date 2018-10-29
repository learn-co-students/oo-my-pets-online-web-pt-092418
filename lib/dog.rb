class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @dog = self
    @name = name
    @mood = "nervous"
  end


end