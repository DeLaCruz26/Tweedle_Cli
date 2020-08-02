class Scraper

    def self.scrape_flowers
        site = "https://tweedlefarms.com/hemp-flower/"

        doc = Nokogiri::HTML(open(site))
        binding.pry
    end

end