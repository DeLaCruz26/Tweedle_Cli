class TweedleCli::Option

        attr_accessor :name, :url

        @@all = []

        def initialize(name, url)
            @name = name
            @url = url
            save
        end

        def save
            @@all << self
        end

        def self.all
            @@all
        end


end