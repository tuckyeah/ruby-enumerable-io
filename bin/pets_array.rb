require_relative '../lib/pets.rb'

pets = Pets.new.pets

p "There are #{pets.count} pets in this list."
