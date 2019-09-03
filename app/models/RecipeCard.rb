class RecipeCard

    attr_accessor :name_of_recipe, :user, :entry_date, :rating

    @@all = []

    def initialize(name_of_recipe, user, entry_date, rating)
        @name_of_recipe = name_of_recipe
        @user = user
        @entry_date = entry_date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def self.recipe_card_count
        card_count = {}
        self.all.each do |card|
             recipe = card.name_of_recipe
            if card_count[recipe]
                card_count[recipe] += 1
            else 
                card_count[recipe] = 1
            end 
        end
        card_count.sort_by{|card, number| number}
    end

    def date
        self.entry_date
    end

    def recipe_rating
        self.rating
    end

    def username
        self.user.name
    end

    def recipe
        self.name_of_recipe.name
    end

end #end of recipe class