class RecipeCard
    attr_reader :name, :user, :recipe, :date, :rating
    @@all = []

    def initialize(recipe, user, rating, date="#{Time.now.month}/#{Time.now.day}/#{Time.now.year}")
        @name = "Recipe Card for #{recipe.name}"
        @recipe = recipe
        @user = user
        @date = date
        @rating = rating

        @@all << self
    end

    def self.all
        @@all
    end
    
end