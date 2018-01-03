#files - saving/creating
File.open("test.rb","a") do |file|
    file.puts "puts 'test'"
end

#File.open("test.rb","a") { |file| file.write("test") }
#file_to_save = File.new("test.rb","a")
#file_to_save.puts("Testest")
#file_to_save.close

# .open second param
# r - reading
# a - appending
# w - writing
# w+ - reading and writing
# a+ - reading and appending
# r+ - updating, reading and writing

#reading

