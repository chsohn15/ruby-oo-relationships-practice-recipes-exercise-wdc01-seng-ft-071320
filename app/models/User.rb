class User

    @@all = []

    def initialize 
        @@all << self
    end
    
    def self.all
        @@all
    end


    # - `User#recipes`
    # should return all of the recipes this user has recipe cards for
    def recipes
        # Loop through RecipeCard
        #Find cards for this user
        #Gather recipes on those cards

        user_recipecards = RecipeCard.all.select do |recipecard|
            recipecard.user == self
        end
        user_recipecards.map do |recipecard|
            recipecard.recipe
        end
    end

    
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end


    # Return all of the ingredients this user is allergic to
    def allergens
        #Loop through Allergy
        #Find allergies for that user
        #Return ingredients that user is allergic to 
        user_allergies = Allergy.all.select do |allergy|
            allergy.user == self
        end
        user_allergies.map do |allergy|
            allergy.ingredient
        end
    end

    #Create new recipe card for user
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

end