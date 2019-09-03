class Recipe
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        rec_ings = RecipeIngredient.all.select{|recipe_ingredient|recipe_ingredient.recipe == self}
        rec_ings.map{|rec_ing|rec_ing.ingredient}
    end
end