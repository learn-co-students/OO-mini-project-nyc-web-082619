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

    def recipe_cards
        RecipeCard.all.select{|card|card.recipe == self}
    end
   
    def self.most_popular
        self.all.max_by{|recipe|ingredient.recipe_cards.length}     
    end

    def allergens
        self.ingredients.select{|ingredient| Allergy.allergens.include?(ingredient)}
    end

    def add_ingredients(ingredients)
        ingredients.map{|ingredient| RecipeIngredient.new(self, ingredient)}
    end
end