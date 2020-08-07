class TweedleCli::Scraper

    def self.scrape_options(url)
       site = Nokogiri::HTML(open(url))
       categories = site.css("ul.navList li.navList-item.category-item.ss a.navList-action")
       

       categories.map do |link|
        TweedleCli::Option.new(link.text, link.attributes["href"].value)
       end
    end

    def self.scrape_products(option)
        site = Nokogiri::HTML(open(option.url))
        products = site.css("li.product article.card")

        products.each do |block|
            product = TweedleCli::Product.new

            product.name = block.css("h4.card-title a").text
            product.price = block.css("span.price.price--withoutTax").text
           
            option.add_product(product)
        end
    end

end