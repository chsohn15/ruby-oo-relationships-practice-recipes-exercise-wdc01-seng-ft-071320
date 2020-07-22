class Ingredient
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name 
        @@all << self
    end
    
    def self.all
        @@all
    end

      # `Ingredient.most_common_allergen`
    # should return the ingredient instance 
    # that the highest number of users are allergic to

    def self.most_common_allergen
            self.all.max_by do |ingredient|
            Allergy.all.select do |allergy|
                allergy.ingredient == ingredient
            end.count
        end
    end


    def allergen?
        #Figure out if ingredient is an allergy in the allergy table
        #Loop through Allergy
        #If allergy in table, return true
        #If not, return false
        Allergy.all.any? do |allergy|
            allergy.ingredient == self
        end
    end
  

 


end