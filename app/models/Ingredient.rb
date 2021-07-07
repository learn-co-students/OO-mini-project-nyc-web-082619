class Ingredient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.most_common_allergen
        allergen_count = Hash.new(0)
        Allergy.all.each{|allergy| allergen_count[allergy.ingredient] += 1}
        allergen_count.sort_by{|allergy, total| total}.last[0]
    end

    def self.all
        @@all
    end
end