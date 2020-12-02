
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
        prompt = TTY::Prompt.new
        prompt.ask("What is your pet's name?")
    end
    # puts "To see items, enter 'items'"
    # puts "To exit the store, enter 'exit'" 
    # menu
    def menu
        input = gets.strip.downcase

        if input == "items"
            items_list
            menu
        elsif input == "exit"
            goodbye
        else
            puts "Invalid entry, try again"
            menu
        end
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
    

    def goodbye
        puts "Thank you for visiting ITEM.MATCH!"
    end


end
