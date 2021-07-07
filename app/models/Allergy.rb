class Allergy
    attr_reader :name, :ingredient, :user
    @@all = []

    def initialize(user, ingredient)
        @name = "#{ingredient.name} allergy"
        @ingredient = ingredient
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.allergens
        self.all.map{|allergy|allergy.ingredient}
    end
end