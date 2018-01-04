#error handling

# begin # bad way of doing it!
#     puts 8/0
# rescue
#     puts "Rescued Error"
# end

# begin
#     puts 8/0
# rescue ZeroDivisionError => e
#     puts "Error: #{e}..."
# end

# begin
#     puts nil + 10
# rescue StandardError => e
#     puts "Error: #{e}"
# end

#custom error handling

def err_log(e)
    File.open("errlog.txt","a") do |file|
        file.puts e
    end
end
