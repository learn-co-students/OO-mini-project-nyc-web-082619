
class Allergy 
    attr_accessor :user, :ingredient
    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient

        @@all << self 
    end

    def self.all
        @@all
    end

    def self.all_ingredients
        self.all.map {|v| v.ingredient.name}
    end
end #end Allergy class      
