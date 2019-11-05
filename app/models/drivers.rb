require 'pry'

class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        self.rides.collect do |ride|
            ride.passenger
        end
    end

    def total_distance_driven
        miles = self.rides.collect do |ride|
            ride.distance
        end
        miles.sum
    end

    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_distance_driven > distance
            binding.pry
        end
    end

end