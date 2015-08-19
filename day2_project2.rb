
# Menu Stylin

main_menu = """
            Welcome to Rock Paper Scissors!
           
            1 : Rock
            2 : Paper
            3 : Scissors
            4 : Quit

            Please select one of the above: """

def current_scores_menu(user,comp,draw) 
    current_scores = """
            Current Scores: 
            User Wins: #{user}
            Computer Wins: #{comp} 
            Draws: #{draw} 
            """        
end

# Computer Choice Array
choice_array = [1,2,3]



# Methods
def error_check(input)
    if input < 1 || input > 4
        return 0
    else
        return 1
    end
end





# Main Program 

# Initializeeee
user_wins = 0
comp_wins = 0
draw_wins = 0
initialize_score(user_wins, comp_wins, draw_wins)
loop do  
    # Print menu and get input
    print main_menu
    user_input = gets.chomp.to_i
    comp_input = choice_array.sample
    break if user_input == 4

    if error_check(user_input) == 1 
        puts "Your choice: #{user_input}"
        puts "Computer choice: #{comp_input}"
        if user_input == comp_input
            puts 'It\'s a draw!'
            draw_wins += 1
        elsif (user_input == 1 && comp_input == 3) || (user_input == 2 && comp_input == 1) || (user_input == 3 && comp_input == 2)
            puts 'User wins!'
            user_wins += 1
        else
            puts 'Computer wins :('
            comp_wins += 1
        end

        puts current_scores_menu(user_wins, comp_wins, draw_wins)

    else 
        puts 'Error: Invalid input'
    end


    
end
                 
     



