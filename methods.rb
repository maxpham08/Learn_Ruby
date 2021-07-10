print "Simple calculator\n"
20.times { print "-"}

p "Enter your first number"
number1 = gets.chomp

p "Enter your second number"
number2 = gets.chomp

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

p multiply(number1, number2)