# Method fun
def list                            # done mostly; prints keys as lowercase though
  puts 'Listing all contacts: '
  puts @contact_list.keys
end

def add_new
  print 'Input new name: '
  add_name = gets.chomp
  @contact_list << new_name
end

def sort
  puts 'Sorting contacts by first name:'
  puts contact_list.sort
end

def delete
  print 'Input name to delete: '
  delete_name = gets.chomp
  contact_list.delete(delete_name)
  puts 'Updated contact list: '
  puts contact_list
end

def list_all
  puts 'Listing all info: '   
  detailed_contact_list.each do |r|       #formatting code for 4x3 array
  puts r.each{ |p| p }.join("")
end

def edit
  print 'Input a contact to edit: '
  edit_name = gets.chomp
  if @contact_list.include?("#{edit_name}") == true
    print "Input updated contact: "
    edited_name = gets.chomp
    contact_list[contact_list.index("#{edit_name}")] = edited_name
    puts "Updated contact list:"
    puts contact_list
  else
    puts 'Error: name does not exist in your contact list.'
end

def main_program  
  case user_input
    when '1'
      list

    when '2'
      add_new

    when '3'                                        
      sort

    when '4'
      delete
        
    when '5'                        
      list_all


    when '6'                        
      edit
       
    else
        puts 'Error: Invalid input'
  end
end

# Hash fun fun fun
@contact_list = {emily: {first_name: 'Emily', last_name: 'Smith', phone_number: '111-1111'},
                 john:  {first_name: 'John', last_name: 'Johnson', phone_number: '222-2222'},
                 bill:  {first_name: 'Bill', last_name: 'Bell', phone_number: '333-3333'}
                }


# Main Program
#main_program
