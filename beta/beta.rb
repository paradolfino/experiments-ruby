def multiply(x, y)
    return x * y
end

print "Ger mig en nombra: "
num1 = gets.chomp.to_i
puts num1
print "Ger mig en nombra: "
num2 = gets.chomp.to_i
puts num2
puts "#{num1} \* #{num2} = #{multiply(num1,num2)}"