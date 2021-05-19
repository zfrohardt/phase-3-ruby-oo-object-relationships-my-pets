class Cat
    attr_reader :name
    attr_accessor :owner, :mood

    @@all = []

    def initialize(name, owner)
        @name = name
        @mood = "nervous"
        @owner = owner
        @@all.push self
    end

    def self.all
        @@all
    end
end