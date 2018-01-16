#metaprogramming - define method


## BASIC SYNTAX ##
# class Author
#     define_method("some_method") do
#         puts "some detail"
#     end
# end

# author = Author.new
# author.some_method

class Authoer

    def fiction_details(arg)
        puts "Fiction"
        puts arg
        puts "sad"
    end

    def coding_details(arg)
        puts "coding"
        puts arg
        puts "sad"
    end

    def history_details(arg)
        puts "history"
        puts arg
        puts "sad"
    end

end