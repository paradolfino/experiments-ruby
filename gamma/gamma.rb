def randomArr
    a = []
    rand(100).times do
        a.push(rand(100))
    end
    return a
end

puts randomArr