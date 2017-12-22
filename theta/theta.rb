def commit_loop
    key = ["a","b","c","d","e","f","g"]
    token = []
    rand(key.length).times { token.push(key[rand(key.length)]) }
    open('commits.txt', 'a') do |file|
        file.puts "modification: #{token.join('')}"
    end
    system "git add ."
    sleep 1
    system "git commit -m #{token.join('')}"
end

def commit_times(times)
    sleep 1
    times.times { commit_loop }
end

commit_times 10
