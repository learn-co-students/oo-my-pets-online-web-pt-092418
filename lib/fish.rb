class Fish

  @@all = []

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood= "nervous"
  end

  def reset_all
    @@all.clear
  end


end
