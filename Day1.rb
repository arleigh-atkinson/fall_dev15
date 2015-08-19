

# I need to create a variable with my first name
first_name = 'Arleigh'

# I need to create a variable with my last name
last_name = 'Atkinson'

# Be verbose with variable names

# I need to output my first and last name
#puts "#{first_name} #{last_name}" 
#string interpolation: variables inside a string


# puts: outputs variable or data stucture with a new line
# print: outputs variable or data structure without a new line

#puts first_name 
#puts last_name
#print first_name
#print last_name
#puts full_name

# take user input
# set first name to user input
# output user's first name

# Use print to prevent new line after colon
#print "Input your first name: "
#user_name = gets.chomp.strip               # strip: beginning and end     gets: just end
#puts "Hey #{user_name}"


# Contact List (just first names)

# 1. Have an option to list all contacts
# 2. Have an option to create a new contact

# Bonus: 
  # 1. Have an option to sort contacts by first name 
  # 2. Have an option to edit a contact
  # 3. Store first name, last name, and phone number
  # 4. Delete a contact

contact_list = ['Jake','John', 'Joe']
contact_list << 'Ashley'                     # << pushes the data onto the array
#print contact_list        # print lists with brackets
                          # puts lists without brackets


# 2D array
detailed_contact_list = [['Jake ','Johnson ','111-1111 '],['John ','Bell ','222-2222'],['Joe ','From ','333-3333'],['Ashley ','Smith ','444-4444']]




intro_menu = """
        1 : List all contacts
        2 : Create a new contact
        3 : Sort contacts by first name
        4 : Delete a contact
        5 : List first names, last names, and phone numbers
        6 : Edit a contact

        Please select an option:  """

print intro_menu
user_input = gets.chomp


# Cases based upon user input
case user_input
    when '1'
        puts "Listing all contacts:"
        puts contact_list

    when '2'
        print "Input new name: "
        add_name = gets.chomp
        contact_list << new_name

    when '3'                                        
        puts "Sorting contacts by first name:\n\n"
        puts contact_list.sort

    when '4'
        print "Input name to delete: "
        delete_name = gets.chomp
        contact_list.delete(delete_name)
        puts "Updated contact list: "
        puts contact_list
        
        

    when '5'                        
        puts "Listing all info: "      
        detailed_contact_list.each do |r|       #formatting code for 4x3 array
          puts r.each{ |p| p }.join("")
        end


    when '6'                        
        print "Input a contact to edit: "
        edit_name = gets.chomp
        if contact_list.include?("#{edit_name}") == true
          print "Input updated contact: "
          edited_name = gets.chomp
          contact_list[contact_list.index("#{edit_name}")] = edited_name
          puts "Updated contact list:"
          puts contact_list
        else
          puts "Error: name does not exist in your contact list."
        end
       
    else
        puts 'Error: Invalid input'
end



###################################################
#         Exp                                          






