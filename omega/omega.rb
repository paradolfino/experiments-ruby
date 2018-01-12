#metaprogramming

# class Kos
# end

# class Kos
#     def sword
#         "SHING!"
#     end
# end

# p Kos.new.sword => "SHING!"

# class Kos
#     def sword
#         "SHWAP!"
#     end
# end

# p Kos.new.sword => "SHWAP"

class String
    def censor(word)
        self.gsub! "#{word}", "####"
    end

    def chars
        size
    end
end

p "The quick brown fox jumped over the brown fence".chars