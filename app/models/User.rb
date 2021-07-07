class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def declare_allergy(allergy)
        Allergy.new(self, allergy)
    end
    
    def add_recipe_card(recipe, rating, date)
        RecipeCard.new(recipe, self, rating, date)
    end

    def allergies
        Allergy.all.select{|allergy|allergy.user == self}
    end

    def recipe_cards
        RecipeCard.all.select{|recipe_card|recipe_card.user == self}
    end

    def top_three_recipes
        self.recipe_cards.sort{|a, b|b.rating <=> a.rating
    binding.pry
}.take(3)
    end

    def most_recent_recipe
        dates_array = self.recipe_cards.map{|card|card.date}
        split_dates = dates_array.map{|date|date.split('/').map{|num| num.to_i}}
        sorted_dates = split_dates.sort_by{|mm, dd, yyyy| yyyy || mm || dd}
        sorted_strings = sorted_dates.map{|date|date.map{|num|num.to_s}}
        sorted_date_string_array = sorted_strings.map{|date|date.join('/')}
        self.recipe_cards.find{|recipe_card| recipe_card.date == sorted_date_string_array.last}
    end

    # def safe_recipes
    #     allergy_ings = self.allergies.map{|allergy| allergy.ingredient}
    #     unsafe_recipes = []
    #     Recipe.all.each do |recipe|
    #         recipe.ingredients.each do |ingredient|
    #             if allergy_ings.include?(ingredient)
    #                 unsafe_recipes << recipe
    #             end
    #             #binding.pry
    #         end
    #     end
    #     Recipe.all - unsafe_recipes
    # end

    def safe_recipes
        allergy_ings = self.allergies.map{|allergy| allergy.ingredient}
        Recipe.all.select do |recipe|
            recipe.ingredients - allergy_ings == recipe.ingredients
        end
    end
        
end