class Passenger

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
            ride.passenger == self
        end
    end

    def drivers
        self.rides.collect do |ride|
            ride.drivers
        end
    end

    def total_distance
        distance_array = self.rides.collect do |ride|
            ride.distance
        end
        distance_array.sum
    end

    def self.premium_members
        @@all.select do |passenger|
            passenger.total_distance > 100
        end
    end



end