class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
    
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.count
    new_count =  @@all.count
    new_count
  end
  def self.reset_all
    @@all.clear
  end
  
   def species
    @species
  end

  def say_species
    p "I am a #{@species}."
  end
  
  def name
  p "#{@name}"
  end

  def buy_fish(pets)
  if @pets[:fish] = 0
    nil
  else 
      @pets[:fish => 1]
  end
end

  


end
