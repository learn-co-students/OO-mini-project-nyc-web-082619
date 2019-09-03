require_relative '../config/environment.rb'


henry = User.new("Henry")
samantha = User.new("Samantha")

cookies = Recipe.new("cookies")
cake = Recipe.new("cake")
tiramisu = Recipe.new("tiramisu")
pb_j = Recipe.new("pb&j")


samantha.add_recipe_card(pb_j, "09/04/19", 5)


henry.add_recipe_card(tiramisu, "09/06/19", 3)
henry.add_recipe_card(pb_j, "09/04/19", 2)
henry.add_recipe_card(cookies, "09/05/19", 5)
henry.add_recipe_card(cake, "09/03/19", 4)

eggs = Ingredient.new("eggs")
cake_mix = Ingredient.new("cake_mix")
chocolate = Ingredient.new("chocolate")


ingredients = [eggs, cake_mix, chocolate]
cookies.add_ingredients(ingredients)
tiramisu.add_ingredients([eggs])


henry.declare_allergy(eggs)
samantha.declare_allergy(eggs)
henry.declare_allergy(chocolate)


binding.pry
