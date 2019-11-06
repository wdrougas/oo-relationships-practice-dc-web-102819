require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# driver1 = Driver.new("Will")
# driver2 = Driver.new("Remi")

# passenger1 = Passenger.new("Jasur")
# passenger2 = Passenger.new("Eunice")

# ride1 = Ride.new(passenger1, driver1, 5.0)
# ride2 = Ride.new(passenger2, driver2, 7.0)
# ride3 = Ride.new(passenger1, driver2, 6.0)
# ride4 = Ride.new(passenger2, driver1, 4.0)
# ride5 = Ride.new(passenger1, driver1, 200.0)
# ride6 = Ride.new(passenger1, driver1, 300.0)


# ride1.passenger
# passenger1.rides
# driver1.rides
# Ride.average_distance
# Driver.mileage_cap(100)
# Passenger.premium_members
# # Driver.mileage_cap(70)




seattle = Listing.new("Seattle")
cleveland = Listing.new("Cleveland")
dallas = Listing.new("Dallas")

scott = Guest.new("Scott")
will = Guest.new("Will")
sarah = Guest.new("Sarah")

trip1 = Trip.new(cleveland, will)
trip2 = Trip.new(seattle, scott)
trip3 = Trip.new(seattle, sarah)
trip4 = Trip.new(dallas, will)

will.trips
will.listings


seattle.trips
seattle.guests


# trip1.listings
# trip1.guests




# flour = Ingredient.new("Flour", 10)
# butter = Ingredient.new("Butter", 15)
# sugar = Ingredient.new("Sugar", 20)

# cake = Dessert.new("Cake", flour)
# pie = Dessert.new("Pie", butter)
# pudding = Dessert.new("Pudding", sugar)

# bakery1 = Bakery.new("Bakery A", cake)
# bakery2 = Bakery.new("Bakery B", pie)
# bakery3 = Bakery.new("Bakery C", pudding)



binding.pry
0