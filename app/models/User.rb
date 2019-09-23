class User

    attr_reader :name
    @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def my_recipe_cards
    RecipeCard.all.select {|card| card.user == self}    
  end


  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self,recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|allergen|allergen.user == self}.map {|allergen| allergen.ingredient}
  end

  def top_three_recipes
    recipe_cards.sort_by{|recipe|recipe.rating}.reverse.first(3).map{|card|card.recipe}
  end



  def self.all
    @@all
 end







    # def add_song(song)
    #     self.songs << song
    #     song.artist = self


end




