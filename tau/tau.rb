#error handling

# begin # bad way of doing it!
#     puts 8/0
# rescue
#     puts "Rescued Error"
# end

begin
    puts 8/0
rescue ZeroDivisionError => e
    puts "You tried to #{e}..."
end
