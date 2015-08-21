require 'pry'

class List
    attr_accessor :name, :items_array               # this is a method, symbols are items passed in; () are optional

    def initialize(name)
        @name = name
        @items_array = []
    end

    def display_menu
        while true
            puts """
            What would you like to do?
            1. Display List
            2. Add item
            3. Remove item
            4. Mark an item complete
            5. Exit
            """
            choice = gets.chomp
            if choice == '1'
                display_list
            elsif choice == '2'
                puts 'Name of list item: '
                item_name = gets.chomp
                puts 'Add a description: '
                descrip = gets.chomp
                add_item(item_name, descrip)
            elsif choice == '3'
                puts 'Name of list item you would like to remove: '
                remove_name = gets.chomp
                
            end
        end
    end

    def add_item(name, descrip)
        @items_array << Item.new(name, descrip)                # << is called the shovel operator
    end

    def display_list
        @items_array.each do |item|
            puts item.item_name + ' -- ' + item.description
        end
    end

end



class Item
    attr_accessor :item_name, :description

    def initialize(item_name, description) 
        @item_name = item_name
        @description = description
    end

end


binding.pry