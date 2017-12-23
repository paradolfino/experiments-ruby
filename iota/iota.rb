

def detect_file
   mod = Dir.glob("*/*").max_by {|f| File.mtime(f)}
   mod = mod.split('/')
   commit_loop(mod[0], mod[1])
end

def commit_loop(path, ref)
    verb = ["modify","change","edit"]
    sleep 1
    system "git add ."
    sleep 1
    system "git commit -m \"#{path}: #{verb[rand(verb.length)]} #{ref}\""
end

reaper = Thread.new do
    while true
      detect_file
    end
 end
 
 gets
 system "git push -u origin december"
 reaper.kill
#Dir.glob("*").max_by {|f| File.mtime(f)}
#Dir.glob("#{Dir.pwd}**/").max_by {|f| File.mtime(f)}
#Dir.glob("*/*").max_by {|f| File.mtime(f)}