require 'pry'

class List
  attr_accessor :name, :item_array, :item_hash 

  @main_menu = {'1' => 'Display List', 
              '2' => 'Add item', 
              '3' => 'Remove item', 
              '4' => 'Mark an item complete', 
              '5' => 'Exit'
            }

  def initialize(name)
    @name = name
    @item_array = []
    @item_hash = Hash.new
  end

  def display
    while true
      display_menu
      choice = gets.chomp
      if choice == '1'
        display_list
      elsif choice == '2'
        puts 'Name of list item: '
        item_name = gets.chomp
        puts 'Add a description: '
        description = gets.chomp
        add_item(item_name, description)

        # copies for the hash
        name_for_hash = item_name
        descrip_for_hash = description
        @item_hash[name_for_hash] = descrip_for_hash

      elsif choice == '3'
        puts 'Which item would you like to remove?'
        remove_item = gets.chomp
        item_removal(remove_item)
      elsif choice == '4'
        puts 'Choose the item you would like to mark complete: '
        item_complete = get.chomp
      end
    end
  end

  def display_menu
      @main_menu.times do |choice_number|
          puts "#{(choice_number + 1).to_s}. #{@main_menu[(choice_number + 1).to_s]}"
      end
  end

  def add_item(name, descrip)
    @item_array << Item.new(name, descrip)
  end

  def display_list
    @item_array.each do |item|
      puts item.item_name + ' -- ' + item.description
    end
  end

  def item_removal(name)        
        @items_array.delete(name)
  end

  def edit_item(item)
    @item_array.item.item_description = 'COMPLETE'      #not sure how to fix this...
  end

end





class Item
  attr_accessor :item_name, :description

  def initialize(item_name, description)
    @item_name = item_name
    @description = description
  end

end


#binding.pry