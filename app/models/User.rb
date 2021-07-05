require 'date'
class User 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self   
    end 

   

    def recipes 
        self.find_recipe_card_by_user.map {|recipecard| recipecard.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def find_all_allergens_by_user 
        Allergy.all.select {|allergies| allergies.user == self}
    end

    def allergens
        self.find_all_allergens_by_user.map {|allergies| allergies.ingredient}
    end

    # User#top_three_recipes should return the top three highest rated recipes for this user.

    def sort_by_decending_rating
        self.find_recipe_card_by_user.sort_by {|recipe| recipe.rating}.reverse
    end

    def top_three_recipes
        self.sort_by_decending_rating.map {|v| v.recipe.name}.slice(0,3)
    end

    #most_recent_recipe should return the recipe most recently added to the user's cookbook.

    def most_recent_recipe
        self.find_recipe_card_by_user.sort_by {|v| v.date}.last.recipe.name
    end


    def self.all
        @@all
    end

     def find_recipe_card_by_user
        RecipeCard.all.select {|recipecards| recipecards.user == self}
    end
end #end class user 