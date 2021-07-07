require_relative '../config/environment.rb'

r1 = Recipe.new("Chicken Alfredo")
r2 = Recipe.new("Pasta La Vista")
r3 = Recipe.new("Burrito Parm")
r4 = Recipe.new("Hambo First Blood Part II")

i1 = Ingredient.new("Chicken")
i2 = Ingredient.new("Pasta")
i3 = Ingredient.new("Parm")
i4 = Ingredient.new("Ham")
i5 = Ingredient.new("Pesto")
i6 = Ingredient.new("Vengeance")
i7 = Ingredient.new("Aioli")
i8 = Ingredient.new("Tortilla")

u1 = User.new("Jimbo")
u2 = User.new("Finbar")
u3 = User.new("Alfred")
u4 = User.new("Marmaduke")

a1 = Allergy.new(u1, i3)
a2 = Allergy.new(u1, i6)
a3 = Allergy.new(u3, i1)
a4 = Allergy.new(u3, i3)
a5 = Allergy.new(u3, i7)

rc1 = RecipeCard.new(r1, u2, 4, "9/14/2002")
rc2 = RecipeCard.new(r4, u2, 2, "7/28/2019")
rc3 = RecipeCard.new(r2, u2, 3)
rc4 = RecipeCard.new(r1, u2, 4, "4/16/2012")
rc5 = RecipeCard.new(r3, u2, 5)

ri1 = RecipeIngredient.new(r3, i3)
ri2 = RecipeIngredient.new(r3, i8)
ri3 = RecipeIngredient.new(r1, i1)
ri4 = RecipeIngredient.new(r2, i2)
ri5 = RecipeIngredient.new(r2, i5)
ri6 = RecipeIngredient.new(r4, i4)
ri7 = RecipeIngredient.new(r4, i6)

Ingredient.most_common_allergen

u3.top_three_recipes

binding.pry
