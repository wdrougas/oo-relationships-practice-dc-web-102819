class Trip

    attr_reader :listing, :guest

    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        self.listing
    end

    def guests
        self.guest
    end

end