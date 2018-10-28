class Owner
  attr_accessor :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end
    
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def species
    @species
  end

  


end
