class Pirate
    attr_accessor :name, :weight, :height, :ships
    @@all = [] 
    def initialize(name:, weight:, height:)
        @name = name
        @weight = weight
        @height = height
        @ships = []
    end

    def self.all 
        @@all 
    end

    def self.clear
        @@all.clear
    end
end