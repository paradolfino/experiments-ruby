#files
File.open("test.rb","a") do |file|
    file.puts "puts 'test'"
end

# .open second param
# r - reading
# a - appending
# w - writing
# w+ - reading and writing
# a+ - reading and appending
# r+ - updating, reading and writing