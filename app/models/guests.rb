class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        self.trips.collect do |trip|
            trip.listing
        end
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveler
        @@all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        @@all.select do |guest|
            guest.name == name
        end
    end

end