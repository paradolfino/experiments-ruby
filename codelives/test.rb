#testing living code for possible implementation with gitreaper

input = gets.chomp

open('test.rb', 'a') do |file|
    file.puts "\n" + input
end

