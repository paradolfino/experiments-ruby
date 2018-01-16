#metaprogramming - define method


## BASIC SYNTAX ##
# class Author
#     define_method("some_method") do
#         puts "some detail"
#     end
# end

# author = Author.new
# author.some_method

class Author

    ## BAD ##
    # def fiction_details(arg)
    #     puts "Fiction"
    #     puts arg
    #     puts "sad"
    # end

    # def coding_details(arg)
    #     puts "coding"
    #     puts arg
    #     puts "sad"
    # end

    # def history_details(arg)
    #     puts "history"
    #     puts arg
    #     puts "sad"
    # end

    ## GOOD ##
    genres = %w(fiction coding history)

    genres.each do |genre|
        define_method("#{genre}_details") do |arg|
            puts "Genre: #{genre}"
            puts arg
            puts genre.object_id
        end
    end

end

author = Author.new
author.coding_details("Kal Noport")
