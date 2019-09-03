class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @recipe_cards = []
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes 
        RecipeCard.all.select do |recipe_cards|
            recipe_cards.user == self
        end 
    end

    def add_recipe_card(name_of_recipe, date, rating)
        RecipeCard.new(name_of_recipe, self, date, rating)
    end 

    def top_three_recipes
        # binding.pry
        top_recipes = RecipeCard.all.sort_by{|recipe_cards| recipe_cards.rating}
        top_recipes.last(3)
    end

    def most_recent_recipe
        recent_recipe = RecipeCard.all.sort_by{|recipe_cards| recipe_cards.entry_date}
        recent_recipe.last
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy|
            allergy.user == self
        end
    end
end #end of user class