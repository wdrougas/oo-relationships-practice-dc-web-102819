class Dessert

    attr_reader :name, :ingredient

    @@all = []

    def initialize(name, ingredient)
        @name = name
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.ingredient
    end

    def bakery
        Bakery.all.select do |bakery|
            bakery.dessert == self
        end
    end

    def calories
        self.ingredients.calorie_count
    end

end