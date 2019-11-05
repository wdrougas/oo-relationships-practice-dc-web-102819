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
            ride.driver
        end
    end

    def total_distance
        distances = self.rides.collect do |ride|
            ride.distance
        end
        distances.sum
    end

    def self.premium_members
        premium = @@all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end