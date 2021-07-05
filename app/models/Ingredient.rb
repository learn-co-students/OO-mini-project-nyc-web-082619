
class Ingredient 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end
    #Ingredient.most_common_allergen should
    # return the ingredient instance that the highest number of users are allergic to

    def self.most_common_allergen 
        Allergy.all_ingredients.max_by {|ing| Allergy.all_ingredients.count(ing)}
    end


end #end Ingredient class