#loops other than while/each

#for in
# for i in 0..42
#     p i
# end

#nested iterator
# obj = {
#     sub_obj1: {
#         sso1: 1,
#         sso2: 2,
#         sso3: 3,
#         sso4: 4
#     },
#     sub_obj2: {
#         sso2_1: 5,
#         sso2_2: 6,
#         sso2_3: 7,
#         sso2_4: 8
#     }
# }

# obj.each do |key, value|
#     puts key
#     value.each do |subkey, subvalue|
#         p "#{subkey} for #{subvalue}"
#     end
# end

#select
# (1..100).to_a.select do |x|
#     #stuff
# end
# (1..100).to_a.select { |x| if x.even? then puts x end }
# (1..100).to_a.select(&:even?)

arr = %w(what on earth is this?)

arr.select { |x| x.length > 5}

