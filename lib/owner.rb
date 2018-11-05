require 'pry'

class Owner
  attr_accessor :name, :mood, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    return "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog_object|
      dog_object.mood = "happy"
      #pets[:dogs][0].mood => to access just the mood in pets[:dogs]
    end
    #binding.pry
  end

  def play_with_cats
    pets[:cats].each do |cat_object|
      cat_object.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish_object|
      fish_object.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets_array|
      pets_array.each {|pet_object| pet_object.mood = "nervous"}
    #  binding.pry
      pets_array.clear
    end
  end


  def list_pets
    cat_count = @pets[:cats].count
    dog_count = @pets[:dogs].count
    fish_count = @pets[:fishes].count
      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
