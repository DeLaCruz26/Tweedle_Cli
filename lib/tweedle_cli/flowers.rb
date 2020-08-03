class TweedleCli::Flowers

    attr_accessor :name, :hemp_flower, :description

    @@all = []

    def initialize(name)
        @name = name
        @hemp_flower = @hemp_flower
        @description = description
        add_hemp
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_hemp
        @hemp_flower.flowers << self unless @hemp_flower.flowers.includes?(self)
    end

end