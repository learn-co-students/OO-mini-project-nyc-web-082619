require_relative '../config/environment.rb'


u1 = User.new("anya")
u2 = User.new("ralph")
u3 = User.new("adam")

r1 = Recipe.new("salad")
r2 = Recipe.new("hamburger")
r3 = Recipe.new("tacos")

rc1 = RecipeCard.new(u1, r1, 1998, 3)
rc2 = RecipeCard.new(u2, r2, 1984, 5)
rc3 = RecipeCard.new(u3, r3, 2007, 4)
rc4 = RecipeCard.new(u1, r2, 2014, 1)

i1 = Ingredient.new("butter")
i2 = Ingredient.new("salt")
i3 = Ingredient.new("meat")
i4 = Ingredient.new("lettuce")

ri1 = RecipeIngredient.new(r1, i4)
ri2 = RecipeIngredient.new(r2, i3)
ri3 = RecipeIngredient.new(r3, i2)
ri4 = RecipeIngredient.new(r3, i1)

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u2, i2)
a3 = Allergy.new(u3, i3)
a4 = Allergy.new(u1, i3)





  binding.pry
