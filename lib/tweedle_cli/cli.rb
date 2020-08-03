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

end
