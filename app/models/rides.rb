require 'pry'

class Ride

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def passengers
        self.passenger
    end

    def drivers
        self.driver
    end

    def self.average_distance
        rides = @@all.map do |ride|
            # ghost = 0
            # puts rides
            # puts ghost
            # These variables 
            ride.distance
        end
        (rides.sum / rides.length).to_f
    end

end