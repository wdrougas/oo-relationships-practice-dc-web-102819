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

    def self.mileage_cap(distance)
        @@all.select do |ride|
            ride.distance > distance
        end
    end


end