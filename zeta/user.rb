#modules, classes, and inheritance
module Destructable
    def destroy(object)
        puts "I will destroy #{object}"
    end
end

class User
    include Destructable
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    def run
        puts "runs"
    end

    def self.id
        puts "I am a class method"
    end
    
end

class Buyer < User
end

class Seller < User
end

class Admin < User
end

user = User.new('Mast','mast.com')
user.destroy(user)