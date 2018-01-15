#metaprogramming - method_missing
require 'ostruct'

class Author
    attr_accessor :fname, :lname, :genre

    def author
        OpenStruct.new(fname: fname, lname: lname, genre: genre)
    end

    def method_missing(method_name, *args, &block)
        # author_....
        if method_name.to_s =~ /author_(.*)/
            author.send($1, *args, &block)
        else
            super
        end
    end

    def respond_to_missing?(method_name, include_private = false)
        method_name.to_s.start_with?('author_') || super
    end

end

author = Author.new
author.fname = "Kal"
author.lname = "Noport"
author.genre = "Kompoter Skansa"

p author.respond_to?(:author_genre)