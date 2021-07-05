require_relative '../config/environment.rb'
require 'date'

pea_soup = Recipe.new("pea soup")
brownies = Recipe.new("brownies")
bread = Recipe.new("bread")
tacos = Recipe.new("tacos")


nicky = User.new("Nicky")
eugenia = User.new("Eugenia")

# Ingredients
peas = Ingredient.new("peas")
ham = Ingredient.new("ham")
carrot = Ingredient.new("carrot")
peanut = Ingredient.new("peanut")

flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
egg = Ingredient.new("egg")
yeast = Ingredient.new("yeast")
milk = Ingredient.new("milk")

meat = Ingredient.new("meat")
tortillas = Ingredient.new("tortillas")
cheese = Ingredient.new("cheese")

card_pea_soup = RecipeCard.new(nicky, pea_soup, Date.today.to_s, 8)
card_pea_soup = RecipeCard.new(eugenia, pea_soup, Date.today.to_s, 7)
card_brownies = RecipeCard.new(eugenia, brownies, Date.today.to_s, 9)
card_bread = RecipeCard.new(eugenia, bread, "2019-09-01", 3)
card_tacos = RecipeCard.new(eugenia, tacos, "2019-08-05", 10)


ingr_bread_1 = RecipeIngredient.new(bread, flour)
ingr_bread_2 = RecipeIngredient.new(bread, yeast)
ingr_brownies_1 = RecipeIngredient.new(brownies, flour)
ingr_brownies_2 = RecipeIngredient.new(brownies, peanut)

tacos_meat = RecipeIngredient.new(tacos, meat)
tacos_tortillas = RecipeIngredient.new(tacos, tortillas)
tacos_cheese = RecipeIngredient.new(tacos, cheese)


array = ["milk", "chocolate"]

#user allergies 

eugenia_peanut = Allergy.new(eugenia, peanut)
eugenia_milk = Allergy.new(eugenia, milk)
eugenia_meat = Allergy.new(eugenia, meat)

nicky_meat = Allergy.new(nicky, meat)
nicky_cheese = Allergy.new(nicky, cheese)



binding.pry
