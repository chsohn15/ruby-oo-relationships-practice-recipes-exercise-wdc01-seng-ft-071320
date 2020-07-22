require_relative '../config/environment.rb'

chicken_parm = Recipe.new("chicken parm")
pizza = Recipe.new("pizza")
cake = Recipe.new("cake")
sushi = Recipe.new("sushi")
sanam = User.new
christina = User.new
chicken = Ingredient.new("chicken")
cheese = Ingredient.new("cheese")
pepper = Ingredient.new("pepper")

#pizza_ingredient1 = RecipeIngredient.new(pizza, cheese)

#One recipe card: 
chicken_parm_ingredient1 = RecipeIngredient.new(chicken, chicken_parm)
chicken_parm_ingredient2 = RecipeIngredient.new(cheese, chicken_parm)

christina_allergy1 = Allergy.new(christina, cheese)

chicken_parm.users
chicken_parm.ingredients
sanam.recipes
sanam.declare_allergy(cheese)
sanam.declare_allergy(pepper)
sanam.allergens

#Christina's new recipe card:
july_10 = Date.new(2020, 7, 10)
july_11 = Date.new(2020, 7, 11)
july_8 = Date.new(2020, 7, 8)
july_9 = Date.new(2020, 7, 9)
sanam.add_recipe_card(chicken_parm, july_10, 5)
sanam.add_recipe_card(pizza, july_10, 8)
christina.add_recipe_card(pizza, july_10, 9)
sanam.add_recipe_card(cake, july_8, 6)
christina.add_recipe_card(chicken_parm, july_9, 10)
sanam.add_recipe_card(sushi, july_11, 7)


pizza.add_ingredients([cheese, pepper])
sanam.top_three_recipes
Recipe.most_popular
july_10 = Date.new(2020, 7, 10)

sanam.most_recent_recipe

Ingredient.most_common_allergen


binding.pry
