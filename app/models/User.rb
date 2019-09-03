 class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select{|card| card.user == self}
    end

    def recipes
        recipe_cards.map{|card| card.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, date, rating)
    end

    def delcare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self }
    end

end