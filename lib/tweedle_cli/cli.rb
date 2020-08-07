class TweedleCli::CLI

    def call
        puts "\nWelcome to Tweedle!\n".colorize(:green)
        puts "Select a number to shop now!"
        puts ""
        scrape_options
        list_options
        user_input
    end

    def scrape_options
        url = "https://tweedlefarms.com/flower/"
        TweedleCli::Scraper.scrape_options(url)
    end

    def list_options
        options = TweedleCli::Option.all
        options.each.with_index(1) do |option, index|
            puts "#{index}. #{option.name.colorize(:light_blue)}"
        end
    end

    def user_input
        input = gets.strip.to_i
        max = TweedleCli::Option.all.length
        if input.between?(1, max)
            option = TweedleCli::Option.all[input - 1]
            show_option_products(option)
        else
            puts "\nInvalid number, please try again.".colorize(:red)
            user_input
        end
    end

    def show_option_products(option)
        if option.products == []
            TweedleCli::Scraper.scrape_products(option)
        end
        puts "Here are the products for #{option.name.colorize(:green)}:"
        option.products.each do |product|
            puts ""
            puts product.name.colorize(:yellow)
            puts product.price.colorize(:yellow)
        end
        menu_selection
    end

    def menu_selection
        puts ""
        puts "Type 'back' if you would like to select another option to shop."
        puts "Otherwise type 'exit' to check out."

        input = gets.strip.downcase
        if input == "back"
            list_options
            user_input
        elsif input == "exit"
            puts "See ya next time!".colorize(:green)
        else
            puts "Sorry didn't understand..".colorize(:red)
            menu_selection
        end
    end

end