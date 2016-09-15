#
require 'pry' # gives us access to File class

input_file = 'data/people.csv'

# calling the open method in the File class on the input_file (data/people.csv)
# then we are iterating over the file line by line and printing the index of
# the line, and the line contents

File.open(input_file) do |file|
  file.each_with_index do |line, i|
    puts "#{i}: #{line}"
  end
end
