class TweedleCli::Scraper

    def self.scrape_options(url)
       site = Nokogiri::HTML(open(url))
       category = site.css("div.sidebarBlock")
       links = category.css("li.true.navList-item.category-item.ss a.navList-action")

       links.map do |link|
        binding.pry
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
