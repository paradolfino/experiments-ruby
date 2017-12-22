

def detect_file
   mod = Dir.glob("*").max_by {|f| File.mtime(f)}
end

def commit_loop
end