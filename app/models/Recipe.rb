class Recipe

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def users
        # Loop through RecipeCards
        # Find RecipeCards where recipe = self
        # Return users of those cards

        all_recipes = RecipeCard.all.select do |recipecard|
            recipecard.recipe == self
        end
        all_recipes.map do |recipecard|
            recipecard.user
        end
    end

    def ingredients
        #should return all of the ingredients in this recipe
        #Loop through RecipeIngredient
        #Find RecipeIngredient where recipe = self
        #Return ingredients from those RecipeIngredients

        all_rec_ing = RecipeIngredient.all.select do |recipeingredient|
            recipeingredient.recipe == self
        end
        all_rec_ing.map do |recipeingredient|
            recipeingredient.ingredient
        end
    end


    def add_ingredients(array)
        # add multiple ingredients to recipe
        # array = [cheese, pepper]
        # Loop through array 
        #Create new RecipeIngredient pair for each ingredient
        array.each do |ingredient|
            RecipeIngredient.new(ingredient, self)
        end
    end


    def allergens
        #access array self.ingredients
        #loop through self.ingredients
        #If self.ingredient.allergen? == true
        #Return an array of ingredients
        self.ingredients.select do |ingredient|
            ingredient.allergen? == true
        end
    end
    # `Recipe.most_popular`
    # should return the recipe instance with the highest number of users 
    # (the recipe that has the most recipe cards)
    # arr.each_with_object(Hash.new(0)) { |n,h| h[n] += 1 }.values.max

    def self.most_popular
        self.all.max_by do |recipe|
        RecipeCard.all.select do |card|
            card.recipe == recipe
        end.count
    end
end
    
    

    
end