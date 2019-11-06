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

    def average_calories
        bakery_calories = self.ingredients.select do |ingredient|
            ingredient.calorie_count
        end
        # bakery_calories.calorie_count / bakery_calories.calorie_count.count
    end

end