class Fish
 attr_accessor :mood
 attr_reader :name
  
  def initialize(name)
    @fish = self
    @name = name
    @mood = "nervous"
  end
end