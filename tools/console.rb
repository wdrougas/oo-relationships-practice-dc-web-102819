require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# driver1 = Driver.new("Will")
# driver2 = Driver.new("Remi")

# passenger1 = Passenger.new("Jasur")
# passenger2 = Passenger.new("Eunice")

# ride1 = Ride.new(5, passenger1, driver1)
# ride2 = Ride.new(7, passenger2, driver2)
# ride3 = Ride.new(6, passenger1, driver2)
# ride4 = Ride.new(4, passenger2, driver1)
# ride5 = Ride.new(200, passenger1, driver1)
# ride6 = Ride.new(300, passenger1, driver1)


# passenger1.rides
# driver1.rides
# ride1.passenger
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


trip1.listings
trip1.guests



binding.pry
0