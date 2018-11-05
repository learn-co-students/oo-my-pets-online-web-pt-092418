class Dog
  attr_reader :name
  #attr_accessor :mood

  def mood= (mood) #writer/setters
    @mood = mood
  end

  def mood #reader/getter
    @mood
  end

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
