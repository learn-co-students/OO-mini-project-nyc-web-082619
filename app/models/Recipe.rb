class Recipe

    attr_reader :name

    @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def my_recipe_cards
    #go thru all cards
    #select the cards that are mine
    RecipeCard.all.select {|card| card.recipe == self}    
  end

  def users
    my_recipe_cards.map {|card| card.user}
  end

  def self.most_popular
    #find alll the card instances
    #get the recepie
    @@all.max_by{|recipe|recipe.my_recipe_cards.count}
  end

  def ingredients
   my_recipe_cards.map{|recipe|recipe.ingredient}
  end

  # def allergens
  #  ingredients.select{|ingredient|}
  #  Allergen.all.map{|allergen|allergen.ingredient|}
  # end

  def add_ingredients(ingredients)
    ingredients.each{|ingredient|RecipeIngredient.new(self, ingredient)}
  end


  def self.all
    @@all
  end




end #end of recipe class




