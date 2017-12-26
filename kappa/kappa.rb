#procs practice

full_name = Proc.new { |first, last| first + " " + last }
p full_name["vik","vol"] #bracket
p full_name.call('val','vak') #call

nam2 = Proc.new do |x,y|
    x * y
end

p nam2[6,6]