class Recipe

        attr_accessor :name

        @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
        end

        def self.most_popular
            RecipeCard.recipe_card_count[-1]
        end

        def users
            recipe_users = []
            RecipeCard.all.select do |card|
                # binding.pry
                if card.name_of_recipe.name == self.name
                    recipe_users << card.user
                end
            end
            recipe_users
        end

        

        def add_ingredients(ingredients)
            ingredients.each do |ingredient|
                RecipeIngredient.new(ingredient, self)
            end
        end

        def ingredients
            RecipeIngredient.all.select do |recipeingredient|
                recipeingredient.recipe == self
            end
        end
        

end #end of recipe class