class TweedleCli::CLI

    def call
        puts "\nWelcome to Tweedle!\n".colorize(:green)
        get_options
        list_options
        get_user_option
    end
        

    def list_options
        puts "\nChoose an option to see flowers.\n"
        puts ""
        @options.each.with_index(1) do |option, index| 
            puts "#{index}. #{option.name}"
        end
    end

    def get_options
        @options = TweedleCli::HempFlower.all   
    end

    def get_user_option
        user_option = gets.strip.to_i
        
        if valid(user_option, @options)
            show_flowers(user_option)
        end
    end

    def valid(input, options)
        input <= options.length && input > 0
    end

    def show_flowers(user_option)
        option = @options[user_option - 1]
        flowers = option.flowers
        puts "#{option.name}"
    end 

    

end
