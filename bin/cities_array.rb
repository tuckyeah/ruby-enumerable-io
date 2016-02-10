require_relative '../lib/cities.rb'

cities = Cities.new('data/cities.csv').cities

print 'count: ', cities.count, "\n"
