class TweedleCli::Scraper

    def self.scrape_options
        site = "https://tweedlefarms.com/hemp-flower/"

        doc = Nokogiri::HTML(open(site))

        options = doc.css(".form-select.form-select--small option")

        options.each do |opt|
            name = opt.text
            TweedleCli::HempFlower.new(name)
        end

        def self.scrape_flowers(flower)
    
        end
      
    end

end