#Ruby Lambda practice
=begin
full_name = lambda { |first, last| first + " " + last }
p full_name.call("Test","Tests")
=end

full_name = -> (first, last) { first + " " + last }
p full_name.call("Test","Tests")