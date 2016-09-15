require 'csv'
require_relative 'pet.rb'

# Pet class
class Pets
  attr_reader :pets

  def initialize
    @pets = []
    CSV.foreach('data/pets.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |pet|
      @pets << Pet.new(pet.to_hash) # headers are symbols, now we can make a hash
    end
  end
end
