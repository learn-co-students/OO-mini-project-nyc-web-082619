class Recipe
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def users
        rcards = RecipeCard.all.select{|rcard| rcard.recipe == self}
        rcards.map{|rcard| rcard.user}
    end

    def ingredients
        r_ings = RecipeIngredient.all.select{|r_ing| r_ing.recipe == self}
        r_ings.map{|r_ings| r_ings.ingredient}
    end
    
    def add_ingredients(ingredients_array)
        ingredients_array.each{|ing| RecipeIngredient.new(self, ing)}
    end

    def allergens
        Allergy.all.map{|allergy| allergy.ingredient}.uniq
    end

    def self.all
        @@all
    end

    def self.most_popular
        recipe_count = Hash.new(0)
        RecipeCard.all.each{|rcard| recipe_count[rcard.recipe] += 1}
        recipe_count.sort_by{|recipe_name, total| total}.last[0]
    end
end