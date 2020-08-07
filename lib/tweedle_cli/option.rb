class TweedleCli::Option

        attr_accessor :name, :url, :option
        attr_reader :products

        @@all = []

        def initialize(name, url)
            @name = name
            @url = url
            @products = []
            save
        end

        def save
            @@all << self
        end

        def self.all
            @@all
        end

        def products
            @products
        end

        def add_product(product)
            @products << product
        end
        
end