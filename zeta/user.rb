class User
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def run
        puts "runs"
    end
    
end

user = User.new("Gotha")
user1 = User.new("Frast")
user2 = User.new("Snard")

user.run
puts user.name
user.name = "Johan"
puts user.name