require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
        fishes: [],
        dogs: [],
        cats: []
    }
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
     "I am a #{species}."
  end

  def buy_fish(name)
    fish_inst = Fish.new(name)
    @pets[:fishes] << fish_inst
  end

  def buy_cat(name)
    cat_inst = Cat.new(name)
    @pets[:cats] << cat_inst
  end

  def buy_dog(name)
    dog_inst = Dog.new(name)
    @pets[:dogs] << dog_inst
  end

  def walk_dogs
    pets[:dogs].each {|dog_inst| dog_inst.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat_inst| cat_inst.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish_inst| fish_inst.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |key, value|
      value.each do |instance|
        instance.mood = "nervous"
      end
      value.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end