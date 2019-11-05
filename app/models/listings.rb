class Listing

    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.collect do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        @@all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        @@all.max_by do |listing|
            @@all.count(listing)
        end
    end

    
end