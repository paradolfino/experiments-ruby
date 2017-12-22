

def detect_file(ref)
   mod = Dir.glob("*").max_by {|f| File.mtime(f)}
   commit_loop(mod)
end

def commit_loop(times, ref)
    sleep 1
    times.times { detect_file }
end

