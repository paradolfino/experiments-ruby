

def detect_file
   mod = Dir.glob("*").max_by {|f| File.mtime(f)}
   commit_loop(mod)
end

def commit_loop(ref)
    sleep 1
    system "git add ."
    sleep 1
    system "git commit -m \"modify #{ref}\""
end

loop do
    detect_file
end
#Dir.glob("#{Dir.pwd}**/").max_by {|f| File.mtime(f)}