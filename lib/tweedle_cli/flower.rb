class Flower

    attr_accessor :name, :percent, :price

    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        Scraper.flowers if @@all.empty?
        @@all
    end

    def self.find_by_name(name)
        self.all.select do |flower|
            flower.name == name
        end
    end

end