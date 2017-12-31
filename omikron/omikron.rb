#(0..50).to_a.map { |x| puts x.to_i }
#(0..50).to_a.map(&:to_i)
#("a".."g").to_a.map { |x| puts x * 2}
test = Hash[[1,2.1,3.33,0.9].map { |x| [x,x.to_f] }]
p test