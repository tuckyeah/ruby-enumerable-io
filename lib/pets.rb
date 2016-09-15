require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :pets

  def initialize
    @pets = []
    CSV.foreach('data/pets.csv',
                headers: true) do |pet|
      @pets << Pet.new(pet)
    end
  end
end
