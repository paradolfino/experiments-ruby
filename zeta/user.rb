class User
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    def run
        puts "runs"
    end
    
end

class Buyer < User
    def run
        
    end
end

class Seller < User
end

class Admin < User
end

user = User.new('','')

puts "What is your name?"
user.name = gets.chomp
puts "What is your email?"
user.email = gets.chomp
puts "Ah, so you are #{user.name} with an address of #{user.email}"

buyer1 = Buyer.new("Johan Gor","johangor@zort.com")
buyer1.run
seller1 = Seller.new("Frank Frast","morgulstagger@frost.com")