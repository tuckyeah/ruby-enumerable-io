require_relative '../lib/people.rb'

people = People.new('data/people.csv').people

p people.count
