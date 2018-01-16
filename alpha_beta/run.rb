#metaprogramming - define method

class Author
    define_method("some_method") do
        puts "some detail"
    end
end