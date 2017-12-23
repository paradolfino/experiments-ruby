

def detect_file
   mod = Dir.glob("*/*").max_by {|f| File.mtime(f)}
   mod = mod.split('/')
   commit_loop(mod)
end

def execute(param)
    system param
    if $? == 0
        puts 'reaped'
    else
        puts 'stalking'
    end
end

def commit_loop(ref)
    verb = ["modify","change","edit"]
    sleep 1
    execute "git add ."
    sleep 1
    execute "git commit -m \"#{ref[0]}: #{verb[rand(verb.length)]}: #{ref[1]}\""
end

reaper = Thread.new do
    while true
      detect_file
    end
 end
 
 gets
 execute "git push -u origin december"
 reaper.kill
#Dir.glob("*").max_by {|f| File.mtime(f)}
#Dir.glob("#{Dir.pwd}**/").max_by {|f| File.mtime(f)}
#Dir.glob("*/*").max_by {|f| File.mtime(f)}