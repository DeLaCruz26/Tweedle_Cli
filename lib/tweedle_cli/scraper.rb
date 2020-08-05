class TweedleCli::Scraper

    def self.scrape_options(url)
       site = Nokogiri::HTML(open(url))
       categories = site.css("ul.navList li.navList-item.category-item.ss a.navList-action")
       

       categories.map do |link|
        TweedleCli::Option.new(link.text, link.attributes["href"].value)
       end
    end

        #def self.scrape_flowers(hemp)
            
           # site = "https://tweedlefarms.com/hemp-flower/"

            #doc = Nokogiri::HTML(open(site))
#  hemp_flowers = doc.css("ul.productGrid li h4.card-title")

            #hemp_flowers.each do |hemp|
             #   name = hemp.text.strip
            #    TweedleCli::Flowers.new(name, hemp)
           # end
        #end
      
    #end

end
