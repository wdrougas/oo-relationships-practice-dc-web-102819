class Ingredient

    attr_reader :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        #return a dessert object for this ingredient
        Dessert.all.select do |dessert|
            dessert.ingredient == self
        end
    end

    def bakery
        Bakery.all.select do |bakery|
            bakery.ingredient == self
        end
    end

    def self.find_all_by_name(ingredient)
        @@all.select do |sausage|
            sausage.name == ingredient
        end
    end

end