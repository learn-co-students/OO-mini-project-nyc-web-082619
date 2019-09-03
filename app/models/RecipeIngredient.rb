class RecipeIngredient
    attr_reader :name, :ingredient, :recipe
    @@all = []

    def initialize(recipe, ingredient)
        @name = "#{rand(0..700)}g of #{ingredient.name}"
        @ingredient = ingredient
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end
    
end