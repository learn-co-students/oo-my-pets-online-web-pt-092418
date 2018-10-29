class Cat
  attr_accessor :mood
  attr_reader :name
 
  def initialize(name)
    @cat = self
    @name = name
    @mood = "nervous"
    
  end
end