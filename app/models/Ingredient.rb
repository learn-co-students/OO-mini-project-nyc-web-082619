class Ingredient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def allergies
        Allergy.all.select{|allergy|allergy.ingredient == self}
    end

    def self.most_common_allergen
        self.all.max_by{|ingredient|ingredient.allergies.length}     
    end
end
