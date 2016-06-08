# script to read a file

require 'pry'

# raise 'Usage: ruby bin/read_file.rb <input_file>' if ARGV.empty?

input_file = 'data/people.csv' # or ARGV[0]

File.open(input_file) do |file|
  file.each_with_index do |line, i|
    p "#{i}: #{line}"
  end
end
