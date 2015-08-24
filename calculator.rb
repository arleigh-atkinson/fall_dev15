#Modules
#require .Math

#Methods

def addition(input1, input2)
  num1 + num2
end

def subtraction(input1, inut2)
  num1 - num2
end

def multiply(input1, input2)
  num1 * num2
end

def divide(input1, input2)
  num1 / num2
end

def mod(input1, input2)
  num1 % num2
end

def root(input1)
  Math.sqrt(input1)
end

def power(input1,input2)
  input1 ** input2
end

def end_check(input)
  if input == 'quit'
    return 0
  else
    return 1
  end
end

def display(input1,input2,op)
  puts op(input1,input2)
end

def error_check()













#Main Program
loop do 
  puts "What would you like to calculate? or type quit"

  user_input = gets.chomp

  if end_check(user_input) == 1 
    user_input = user_input.split(' ')
    num1 = user_input[0].to_i
    oper = user_input[1]
    num2 = user_input[2].to_i

    case oper

      when '+' 
      puts addition(num1,num2)

      when '-'
      puts subtraction(num1,num2)

      when '*'
      puts multiply(num1,num2)

      when '/' 
      puts divide(num1,num2)

      when '%'
      puts mod(num1,num2)

      when 'sqrt'
      puts root(num1)

      when '^'
      puts power(num1,num2)
    end
  end 
  break if end_check(user_input) == 0
 
end


