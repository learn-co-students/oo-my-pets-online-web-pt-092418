require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species= species
    @@owners << self

  end

  def self.all
    @@owners << self
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    #accesses the fishes array
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    #accesses the cat array
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    #accesses the dog array
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
    @pets.each do |species, name|
        name.each do |pet|
          pet.mood = "nervous"
          #name_array.delete(pet)
        end
    end
      @pets = {}
  end


  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end
end
