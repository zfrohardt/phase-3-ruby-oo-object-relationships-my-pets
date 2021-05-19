class Owner
    attr_reader :name, :species
    
    @@all = []

    def initialize(name)
        @name = name
        @species = "human"
        @@all.push self
    end

    def say_species
        "I am a #{self.species}."
    end

    def cats
        Cat.all.select { |cat| cat.owner == self }
    end

    def dogs
        Dog.all.select { |cat| cat.owner == self }
    end

    def self.all
        @@all
    end

    def self.count
        @@all.count
    end

    def self.reset_all
        @@all = []
    end
end