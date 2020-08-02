class TweedleCli::CLI

    def call
        puts "Welcome to Tweedle!"
        get_sorted_options
        list_options
        #get_flowers_from(sort_by)
        #list_flowers
        #select_flower
        #puts "If you would like to see the recent list of Hemp Flower, enter 'cbd'"
        #puts "To exit, type 'exit'"
        #menu
    end

    def list_options
        #list options
        @sort_by.each.with_index(1) do |option, index| 
            puts "#{index}. #{option}"
        end
    end

    def get_sorted_options
        #to be scraped
        @sort_by = ["Featured Items", "Newest Items", "Best Selling", "A to Z", "Z to A", "Price: Ascending", "Price: Descending"]

    end

    #def menu 
    #    input = gets.strip.downcase
#
    #    if input == "cbd"
    #        flower_list
    #        menu
    #    elsif input == "exit"
    #        goodbye
    #    else
    #        invalid_entry
    #    end
    #end
        
        #def invalid_entry
        #    puts "Invalid entry, try again!"
        #    menu
        #end

        #def flower_list
         #   puts "1. Cheese CBD"
         #   puts "2. Sour Space Candy"
        #    puts "4. White CBG Smalls"
        #    puts "5. Berry Blossom"
        #    puts ""
        #    puts "Enter number for more detail"
        #    input = gets.strip.downcase

        #    select_flower(input)
        #end

        #def select_flower(flower)
        #    puts "#{flower}"
        #    #go over array and find by index number.
        #end
        
        #def goodbye 
        #    puts "Goodbye, come back for more cbd!"
        #end

end