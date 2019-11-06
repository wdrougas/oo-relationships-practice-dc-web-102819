class Ride

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
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
         x = @@all.collect do |ride|
            ride.distance
        end
        x.sum / x.count
    end

end