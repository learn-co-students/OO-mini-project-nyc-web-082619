require_relative '../config/environment.rb'

u1 = User.new("Jallen") 
u2 = User.new("Neeraj")

r1 = Recipe.new('Spaghetti')
r2 = Recipe.new("Sushi")
r3 = Recipe.new("Popcorn")
r4 = Recipe.new("Chocolate Chocolate Cake")
r5 = Recipe.new("Scrambled Eggs")

rc1 = RecipeCard.new(r1, u1, "09032019", 5)
rc2 = RecipeCard.new(r2, u1, "09032019", 3)
rc3 = RecipeCard.new(r1, u2, "09032019", 4)

i1 = Ingredient.new("Tomato Sauce")
i2 = Ingredient.new("Pasta")
i3 = Ingredient.new("Parm")
i4 = Ingredient.new("Rice")
i5 = Ingredient.new("Salmon")

sushi_ingredients = [i4, i5]
temp0 = r2.add_ingredients(sushi_ingredients)
spaghetti_ingredients = [i1, i2, i3]
temp10 = r1.add_ingredients(spaghetti_ingredients)

temp = Recipe.most_popular
temp2 = r1.users
temp4 = r2.ingredients
temp5 = u1.recipes

temp3 = u2.add_recipe_card(r2, "09022019", 4)
temp6 = u1.add_recipe_card(r3, "09042019", 5)
temp7 = u1.add_recipe_card(r4, "08312019", 2)
temp8 = u1.add_recipe_card(r5, "09012019", 1)

temp9 = u1.top_three_recipes
temp10 = u1.most_recent_recipe



ri1 = RecipeIngredient.new(i1, r1)
ri2 = RecipeIngredient.new(i2, r1)
ri3 = RecipeIngredient.new(i3, r1)
ri4 = RecipeIngredient.new(i4, r2)
ri5 = RecipeIngredient.new(i5, r2)

a1 = u1.declare_allergy(i2)
a2 = u2.declare_allergy(i2)
a3 = u2.declare_allergy(i1)
a4 = u1.declare_allergy(i5)



binding.pry
