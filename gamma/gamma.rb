def randomArr
    a = []
    100.times { a.push(rand(100)) }
    return a.uniq!
end

puts "#{randomArr.length} #{randomArr}"

def forLoop
    a = []
    b = []
    100.times do
        a.push(rand(100))
    end
    b.push(a.select { |num| num == 10 })
    return b
end

puts forLoop