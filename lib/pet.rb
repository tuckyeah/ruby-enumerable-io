require 'date'
#
class Pet
  attr_reader :dob, :kind, :name

  def initialize(pet_data) # this means that we initialize a new pet with a Hash
    @dob = pet_data[:dob]  # we can tell because we're accessing these values
    @kind = pet_data[:kind]  # as we would values from a hash 
    @name = pet_data[:name]
  end

  def age
    born_on = Date.parse(dob)
    today = Date.today
    if born_on.month > today.month ||
       born_on.month == today.month && born_on.day >= today.day
      today <<= 12 # one year younger
    end
    today.year - born_on.year
  end
end
