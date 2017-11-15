require 'pry'

class Owner

attr_accessor :name, :pets
attr_reader :species
@@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def initialize(name)
    @name = name
    @species="human"
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
    @@all << self
  end

#Instance Methods

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets

    @pets.each do |pet_type, animals|
      pet_type[pets]
      binding.pry
    end
    @pets.clear
  end

  def list_pets
    @pets.each {|pet| pet.count}
  end
end
