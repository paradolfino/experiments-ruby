# Hashes
nums = {}
num = 100
rand(num).times { nums[rand(num)] = rand(num) }

puts nums.select { |k,v| v.odd? }