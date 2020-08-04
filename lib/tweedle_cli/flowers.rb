class TweedleCli::Flowers

    attr_accessor :name, :hemp, :description

    @@all = []

    def initialize(name, hemp)
        @name = name
        @hemp = hemp
        add_to_hemp
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_to_hemp
        @hemp.flowers << self unless @hemp.flowers.include?(self)
    end

end