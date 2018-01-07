#procs practice

full_name = Proc.new { |first, last| first + " " + last } #single line syntax
p full_name["vik","vol"] #bracket
p full_name.call('val','vak') #call

nam2 = Proc.new do |x,y| #multi line syntax
    x * y
end

p nam2[6,6]

#procs will ignore extra arguments

def my_method
    x = Proc.new { return }
    x.call
    p "Text"
end

my_method
#proc will skip the rest of the method when return is called