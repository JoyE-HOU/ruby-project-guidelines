
class CLI
    def greet 
        puts "                          Welcome to PETITEM.MATCH, the best resource for finding an item for your pet"
    end
    
    def run 
        puts ""
        puts "       ████████╗████████╗╗████████╗ ████████╗████████╗╗████████╗ ███╗   ███║     ███╗   ███╗ █████╗ ████████╗ ██████╗██╗  ██╗"
        puts "       ██    ██╗██      ╗╗   ██╔══  ╚══██╔══╝   ██╔══╝╗██      ╗ ████╗ ████║     ████╗ ████║██╔══██╗╚══██╔══╝██╔════╝██║  ██║"
        puts "       ██    ██╗████████╗╗   ██║       ██║      ██║   ╗████████╗ ██╔████╔██║     ██╔████╔██║███████║   ██║   ██║     ███████║"
        puts "       ████████╗██      ╗╗   ██║       ██║      ██║   ╗██      ╗ ██║╚██╔╝██║     ██║╚██╔╝██║██╔══██║   ██║   ██║     ██╔══██║"
        puts "       ██╗      ████████╗╗   ██║    ██║██║██║   ██║   ╗████████╗ ██║ ╚═╝ ██║ ██╗ ██║ ╚═╝ ██║██║  ██║   ██║   ╚██████╗██║  ██║"
        puts "       ██╗      ╚═╝╚═╝╚═╝    ╚═╝    ╚═╝╚═╝╚═╝   ╚═╝    ╚═╝╚═╝╚═╝ ╚═╝     ╚═╝ ╚═╝ ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝"
        puts ""
        puts ""
        greet 
        puts ""
        puts ""
        puts "Thinking of buying a toy for your pet? We can help you with that decision!"
        puts ""
        puts "To proceed, enter 'menu'"
        puts "To exit, enter 'exit'"
        menu
    end

    def menu
        input = gets.strip.downcase
        if input == "menu"
            pet_list
            menu
            # items_list
        elsif input == "exit"
            goodbye
        else
            puts "Invalid entry, try again"
            menu
        end
    end
    
    def pet_list
        prompt = TTY::Prompt.new
        user_type = prompt.select("Shop by pet", ["dog", "cat", "fish", "bird"])
        pet_selection(user_type)
    end

    def pet_selection(petselection)
        i = Pet.all.select{|pet| pet.breed == petselection} 
        animal_names = i.map{|pet| pet.name}
        prompt = TTY::Prompt.new
        prompt.select("Shop for pet", animal_names)  
        # puts "I love #{petselection}"
    end

    def items_list
        Item.all.each_with_index do |item, index|
        puts "#{index +1}. #{item.name}"
        end 
        puts ""
        puts ""
        puts "which pet item would you like more detail about:"
        input = gets.strip.capitalize

        item_selection(input)
    end

    def item_selection(petitem)
        i = Item.find_by_name(petitem)
        # puts "#{petitem}"
    end
    
    # prompt.ask("What is your pet's breed?")
    # puts "To see items, enter 'items'"
    # puts "To exit the store, enter 'exit'" 
    # menu










    def goodbye
        puts "Thank you for visiting PETITEM.MATCH!"
    end
end
