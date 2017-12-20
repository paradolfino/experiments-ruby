class User
    def initialize(name)
        @name = name
    end
    def run
        puts "runs"
    end
    def get_name
        @name
    end
    def set_name(name)
        @name = name
    end
end

user = User.new("Gotha")
user1 = User.new("Frast")
user2 = User.new("Snard")

user.run
puts user.get_name
user.set_name("Lol")
puts user.get_name