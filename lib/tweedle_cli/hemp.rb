class TweedleCli::HempFlower

        attr_accessor :name, :flowers

        @@all = []

        def initialize(name)
            @name = name
            @flowers= []
            save
        end

        def save
            @@all << self
        end

    def self.all
        TweedleCli::Scraper.scrape_options if @@all.empty?
        @@all
    end

    def flowers
        TweedleCli::Scraper.scrape_flowers(self) if @flowers.empty?
        @flowers
    end

end