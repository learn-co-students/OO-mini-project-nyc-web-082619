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

    def self.most_common_allergy
        common_allergy = {}
        Allergy.all.each do |allergy|
           ingredient = allergy.ingredient.name
        #    binding.pry
           if common_allergy[ingredient]
            common_allergy[ingredient] += 1
           else
            common_allergy[ingredient] = 1
           end
        end
        common_allergy.sort_by{|ingredient, number| number}
        common_allergy.first
    end

end #end of recipe class
