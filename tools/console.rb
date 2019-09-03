require 'pry'

require_relative '../config/environment.rb'

ralph = User.new("Ralph")
anya = User.new("Anya")
wilf = User.new("Wilf")
steven = User.new("Steven")
tania= User.new("Tania")
puts "Created Users"

cake = Recipe.new("Cake")
salad = Recipe.new("Salad")
steak = Recipe.new("Steak")
ice_cream = Recipe.new("Ice Cream")
pie = Recipe.new("Pie")
puts "Created Recipes"

rc1 = RecipeCard.new(pie, ralph, "date", 5)
rc2 = RecipeCard.new(salad, anya, "date", 6)
# rc3 = RecipeCard.new(steak, steven)
# rc4 = RecipeCard.new(ice_cream, tania)
# rc5 = RecipeCard.new(cake, wilf)
# puts "Created RecipeCards"

nuts = Ingredient.new("nuts")
onion = Ingredient.new("onion")
pollen = Ingredient.new("pollen")
milk = Ingredient.new("milk")
honey = Ingredient.new("honey")
potato = Ingredient.new('potato')
puts "Created Ingredient"


a1 = Allergy.new(ralph, nuts)
a2 = Allergy.new(anya, onion)
a3 = Allergy.new(steven, pollen)
a4 = Allergy.new(tania, milk)
a5 = Allergy.new(wilf, honey)
puts "Created Allergy"


RecipeIngredient.new(cake, honey)

binding.pry
