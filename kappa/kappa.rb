#procs practice

full_name = Proc.new { |first, last| first + " " + last }
p full_name["vik","vol"]
p full_name.call('val','vak')