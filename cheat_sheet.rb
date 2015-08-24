# Method fun: menus

def main_menu
	@main_menu.length.times do |choice_number|
		puts "#{(choice_number + 1).to_s}. #{@main_menu[(choice_number + 1).to_s]}"
	end
end


def command_line_menu
	@command_line.length.times do |choice_number|
 		puts "#{(choice_number + 1).to_s}. #{@command_line[(choice_number + 1).to_s][0]} - #{@command_line[(choice_number + 1).to_s][1]} - #{@command_line[(choice_number + 1).to_s][2]}\n\n"
	end
end

def vim_menu
	@vim.length.times do |choice_number|
		puts "#{(choice_number + 1).to_s}. #{@vim[(choice_number + 1).to_s][0]} - #{@vim[(choice_number + 1).to_s][1]} - #{@vim[(choice_number + 1).to_s][2]}\n\n"
	end
end

def sublime_menu
	@sublime.length.times do |choice_number|
		puts "#{(choice_number + 1).to_s}. #{@sublime[(choice_number + 1).to_s][0]} - #{@sublime[(choice_number + 1).to_s][1]}\n\n"
	end
end

# Method fun: misc
def man_pages
	print 'What command would you like to read about? '
	read_option = gets.chomp
	puts `man #{read_option}\n`
end

def cheat_sheet_main
	loop do 
	main_menu
	main_input = gets.chomp

	if main_input == '1'							# Command line
		command_line_menu		
	
	elsif main_input == '2'							# Vim 
		vim_menu
	
	elsif main_input == '3'							# Man Pages
		man_pages
	
	elsif main_input == '4'							# Sublime
		sublime_menu
	end
	
	break if main_input == '5'
end
end


# Hash fun: menus
@main_menu = {'1' => 'Command Line', 
			  '2' => 'Vim', 
			  '3' => 'Search manual pages', 
			  '4' => 'Sublime', 
			  '5' => 'Quit'}

@command_line = {'1' => ['cp', 'copy', 'cp <source filename> <destination filename>'],
				 '2' => ['mv', 'move', 'mv <source filename> <destination directory>'],
				 '3' => ['mkdir', 'make directory', 'mkdir <directory name>'],
				 '4' => ['ls']
				}

@vim = {'1' => ['i', 'insert mode', 'edit text'],
		'2' => ['y', 'yank', 'copy selected text'],
		'3' => [':wq', 'write and quit', 'save document and exit'],
		'4' => ['d', 'delete', 'delete selected text']
		}

@sublime = {'1' => ['Undo','Cmd-Z'],
		'2' => ['Delete entire line','Ctrl-shift-k'],
		'3' => ['Indent left ; indent right', 'Cmd-[ ; Cmd-]'],
		'4' => ['Open file finder', 'Cmd-p']
		}


# Main Program 

cheat_sheet_main





