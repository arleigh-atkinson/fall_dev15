# Pro tip: puts `man #{cmd}`

# Menu stylin

main_menu = """
	Cheat Sheet:
	1. Command Line
	2. Vim 
	3. Search manual pages 
	4. Quit 

	Please input your option : """

sub_menu = """

	1. copy - cp - cp <source filename> <destination filename>
	2. move - mv - mv <source filename> <destination directory>
	3. make directory - mkdir - mkdir <directory name>  
	4. Output manual pages
	5. Return to main menu
	
	Please input your option : """



# Main Program 

loop do 
	print main_menu
	main_input = gets.chomp

	if main_input == '1'
		loop do 
			print sub_menu
			sub_input = gets.chomp
				case sub_input
					when '1'
						print 'Man Page on File Copying: '
						puts `man cp`
					when '2'
						print 'Man Page on File Moving: '
						puts `man mv`
					when '3'
						print 'Man Page on Making a Directory '
						puts `man mkdir`
					when '4'
						puts 'Returning to main menu'
					else
						print 'Invalid input'
				end
		break if sub_input == '4'
		end
	elsif main_input == '2'
		puts 'Man Page on Vim'
		puts `man vim`
	elsif main_input == '3'
		print 'What command would you like to read about?'
		read_option = gets.chomp
		puts `man #{read_option}`
	end
break if main_input == '4'
end








