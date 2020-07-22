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
        self.recipe_cards.map do |recipecard|
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

#     - `User#top_three_recipes`
# should return the top three highest rated 
#recipes for this user.

def recipe_cards
    user_recipecards = RecipeCard.all.select do |recipecard|
        recipecard.user == self
    end
end


def top_three_recipes
#access recipes method from users 
#which will give us the array of all the recipes
#sort through that array using max_by method
self.recipe_cards.max_by(3) do |recipecard|
    recipecard.rating
end
recipe_cards.map do |recipecard|
    recipecard.recipe
end
end

#User#most_recent_recipe`
# should return the recipe most recently added 
# to the user's cookbook.

def most_recent_recipe
    self.recipe_cards.max_by {|recipecard| recipecard.date}
end



end