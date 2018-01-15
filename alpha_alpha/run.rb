#metaprogramming - self-writing code
require 'ostruct'

class Author
    attr_accessor :fname, :lname, :genre

    def author
        OpenStruct.new(fname: fname, lname: lname, genre: genre)
    end

    def method_missing(name, *args, &block)
        # author_....
        if name.to_s =~ /author_(.*)/
            author.send($1, *args, &block)
        else
            super
        end
    end

end

author = Author.new
author.fname = "Kal"
author.lname = "Noport"
author.genre = "Kompoter Skansa"

p author