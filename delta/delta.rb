# Hashes
mydetails = {}
100.times { mydetails[rand(100)] = rand(100) }
mydetails.each { |k,v| mydetails.delete(k) if v > rand(25) }
print mydetails.length
