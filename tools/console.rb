require_relative '../config/environment.rb'

chicken_parm = Recipe.new
pizza = Recipe.new
sanam = User.new
christina = User.new
chicken = Ingredient.new
cheese = Ingredient.new
pepper = Ingredient.new

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
sanam.add_recipe_card(chicken_parm, "July 10", 5)
sanam.add_recipe_card(pizza, "July 10", 8)
christina.add_recipe_card(chicken_parm, "July 9", 10)

pizza.add_ingredients([cheese, pepper])
binding.pry
