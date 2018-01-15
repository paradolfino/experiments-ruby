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

        end
    end

end