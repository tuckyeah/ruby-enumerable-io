require 'pry' # gives us access to File class

input_file = 'data/people.csv'

File.open(input_file) do |file|
  count = 0
  file.each do |line|
    count += line.split(',').length
  end
  p count
end
