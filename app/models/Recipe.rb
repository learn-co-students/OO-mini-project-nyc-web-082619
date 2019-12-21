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

    def ingredients
        recipe_ingredients = RecipeIngredient.all.select { |recipe_ing| recipe_ing.recipe == self }
        recipe_ingredients.map {|ri| ri.ingredient  }
       
    end

    def add_ingredients(ingredients)
        # [<#Ingredient @name = "onion">, <#Ingredient @name = "potato"> ]
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
 end