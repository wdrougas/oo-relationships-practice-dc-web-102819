class Bakery

    attr_accessor :name, :dessert

    @@all = []
    
    def initialize(name, dessert)
        @name = name
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.dessert.ingredient
    end

    def desserts
        self.dessert
    end

    def shopping_list
        self.dessert.ingredient.name
    end

end