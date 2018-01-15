#metaprogramming - self-writing code
require 'ostruct'

class Author
    attr_accessor :fname, :lname, :genre

    def author
        OpenStruct.new(fname: fname, lname: lname, genre: genre)
    end

end