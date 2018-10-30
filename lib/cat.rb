class Cat

  @@all = []

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    # can initialize a cat
    # initializes with a name
    @mood= "nervous"
  end

  def reset_all
    @@all.clear
  end

end
