class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(date, rating, self, recipe)
    end

    def recipe_cards
        RecipeCard.all.select{|rcard| rcard.user == self}
    end

    def recipes
        recipe_cards.map{|rcard| rcard.recipe}
    end

    def top_three_recipes
        sorted_cards = recipe_cards.sort{|a,b| b.rating <=> a.rating}.take(3)
       # sorted_cards.take(3)
    end

    def most_recent_recipe
        recipe_cards.sort{|a,b| b.date <=> a.date}.first
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        allergies = Allergy.all.select{|allergy| allergy.user == self}
        allergies.map{|allergy| allergy.ingredient}
    end

    def safe_recipes
        recipes.select{|recipe| !recipe.ingredients.find{
            |ingredient| allergens.include?(ingredient)
            }
        }
    end

    def self.all
        @@all
    end
end