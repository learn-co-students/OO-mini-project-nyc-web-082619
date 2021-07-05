require 'pry'
class Recipe 
    attr_accessor  
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name


        @@all << self 
    end 

    def find_recipecard_by_recipe
        RecipeCard.all.select {|card| card.recipe == self}
    end

    def users 
        self.find_recipecard_by_recipe.map {|card| card.user}
    end

    def find_recipeingredients_by_recipe
        RecipeIngredient.all.select {|card| card.recipe == self}
    end

    def ingredients
        self.find_recipeingredients_by_recipe.map {|ing| ing.ingredient.name}
    end

    #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    def self.most_popular
        recipe_list = RecipeCard.all.map {|card| card.recipe}
        recipe_list.max_by {|recipe| recipe_list.count(recipe)}
    end

    #allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.

    def allergens
        allergies = []
        self.ingredients.each do |ingredient|
            Allergy.all_ingredients.each do |allergy_ingredient|
                if allergy_ingredient == ingredient
                    allergies << ingredient
                end
            end
        end
        allergies
    end


    #should take an array of ingredient instances as an argument, and associate each of those ingredients 
    #with this recipe
    def add_ingredients(ingredient_list)
        
        array = ingredient_list.map do |ingredient|
            #binding.pry
            Ingredient.new(ingredient)
        end
        
        array.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end

    def self.all
        @@all
    end
end #end ingredient class
