class Ingredient
    @@all = []

    def initialize 
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.most_common_allergen
        #TODO
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