

# Hash Fun Fun Fun

@menu = {
            'entrees' => { 'Meat Loaf' => ['mystery meat with sauce','$5.00'] ,
                'Chicken Pot Pie' => ['flaky crust, mushy chicken', '$6.00'] } ,


            'side_dishes' => { 'Taters' => ['Gimme your tots. Gosh.','$1.00'] ,
                 'Beans' => ['green beans with butter', '$2.00'] ,
                 'Mac and Cheese' => ['straight from the box','$3.00'] }
        }

@user_input_entrees = {1 => @menu['entrees']['Meat Loaf'][1],
                       2 => @menu['entrees']['Chicken Pot Pie'][1]
                      }


@user_input_sides = {1 => @menu['side_dishes']['Taters'][1],
                     2 => @menu['side_dishes']['Beans'][1],
                     3 => @menu['side_dishes']['Mac and Cheese'][1]
                    }

# Methods
def welcome
    puts 'Welcome to the Church and State cafeteria...'
    puts 'The typical meal comes with a main entree and 2 side items.'
end



def entree_list
    puts 'Here is a list of entrees you may choose from: ' 
        @menu['entrees'].keys.each do |dish, price|
        puts "#{dish} - $#{price}"
    end
end



def sides_list
    puts 'Here is a list of side dishes you may choose from: ' 
        @menu['side_dishes'].each do |dish, price|
        puts "#{dish} - $#{number}"
    end
end

def user_input_entrees
    puts 'Highlight your selection and press enter'
    case user_choice
        when 1
            @user_total += @user_input_entrees[1]
        when 2
            @user_total += @user_input_sides[2]    
    end
end 

def user_input_sides
    puts 'Highlight your selection and press enter' 
    user_choice = gets.strip.to_i
    case user_choice
        when 1
            @user_total += @menu['side_dishes']['Taters'][1]
        when 2
            @user_total += @menu['side_dishes']['Beans'][1]    
        when 3
            @user_total += @menu['side_dishes']['Mac and Cheese'][1]
    end

end 








# Main Program
@user_total = 0
welcome

entree_list

user_input_entrees

user_input_sides



