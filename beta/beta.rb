def choice(num)
    case num.to_i
when 1
    print "Ger mig en nombra: "
    num1 = gets.chomp.to_i
    print "Ger mig en nombra: "
    num2 = gets.chomp.to_i
    puts multiply(num1,num2)
when 2
    print "Ger mig en nombra: "
    num1 = gets.chomp.to_i
    print "Ger mig en nombra: "
    num2 = gets.chomp.to_i
    puts divide(num1,num2)
end
end

def multiply(x, y)
    return "#{x} * #{y} = #{x * y}"
end

def divide(x,y)
    return "#{x} / #{y} = #{x / y}"
end

puts "What kind of calculation?"
puts "1. Multiply"
puts "2. Divide"
choice = gets.chomp
choice(choice)
