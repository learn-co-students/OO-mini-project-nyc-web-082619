class RecipeIngredient

    attr_accessor :ingredient, :recipe

    @@all = []

    def initialize(ingredient, recipe)
        @ingredient = ingredient
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_ingredient
        binding.pry
        self.ingredient
    end

    def ingredients_recipe
        self.recipe
    end

end #end of recipe class