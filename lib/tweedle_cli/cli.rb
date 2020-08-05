class TweedleCli::CLI

    def call
        puts "\nWelcome to Tweedle!\n".colorize(:green)
        puts "Choose an option to shop now!"
        scrape_options
        list_options
        user_inputs
    end

    def scrape_options
        url = "https://tweedlefarms.com/flower/"
        TweedleCli::Scraper.scrape_options(url)
    end

    def list_options
        options = TweedleCli::Option.all
        options.each.with_index(1) do |option, index|
            puts "#{index}. #{option.name}"
        end
    end

    def user_input
        input = gets.strip.to_i
        max = TweedleCli::Option.all.length
        if input.betweeen?(1, max)
            option = TweedleCli::Option.all[input - 1]
            show_option_items(input)
        else
            puts "Invalid number, please try again."
            user_input
        end
    end

    def show_option_items(option)
        
    end


        

end























#def list_options
    #puts "\nChoose an option to see flowers.\n"
   # puts ""
    #@options.each.with_index(1) do |option, index| 
    #    puts "#{index}. #{option.name}"
   # end
#end

#def get_options
 #   @options = TweedleCli::HempFlower.all 
#end

#def get_user_option#
  #  user_option = gets.strip.to_i
  #  
  #  if valid(user_option, @options)
   #     show_flowers(user_option)
  #  end
#end

#def valid(input, options)
#    input <= options.length && input > 0
#end

#def show_flowers(user_option)#
 #   option = @options[user_option - 1]
  #  option.get_flowers
 #   puts "Here are #{option.name}."
  #  option.flowers.each.with_index(1) do |flower, index|
  #      puts "#{index}. #{flower.name}"
  #  end
#end 
