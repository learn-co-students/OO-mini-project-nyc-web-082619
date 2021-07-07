class Allergy
    attr_reader :ingredient, :user

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end
end