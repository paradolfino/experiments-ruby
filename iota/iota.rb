

def detect_file
   mod = Dir.glob("*").max_by {|f| File.mtime(f)}
   mod = mod.split('/')
   commit_loop(mod.pop)
end

def commit_loop(ref)
    verb = ["modify","change","add to","edit"]
    sleep 1
    system "git add ."
    sleep 1
    system "git commit -m \"#{verb[rand(verb.length)]} #{ref}\""
end

reaper = Thread.new do
    while true
      detect_file
    end
 end
 
 gets
 reaper.kill
#Dir.glob("*").max_by {|f| File.mtime(f)}
#Dir.glob("#{Dir.pwd}**/").max_by {|f| File.mtime(f)}
#Dir.glob("*/*").max_by {|f| File.mtime(f)}