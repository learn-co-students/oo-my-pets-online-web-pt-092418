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
      @pets[:fishes] << Fish.new(pets)
    end

  def buy_cat(cat_name)
      @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
      @pets[:dogs] << Dog.new(dog_name)
  end

 def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
   def sell_pets
    @pets.empty?.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
        end
      end

      def list_pets
        p @pets
      end
    end
 

end

  


