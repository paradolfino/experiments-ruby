start_sent = "Hej fran matkier land!"
sent_arr = start_sent.downcase.split('')
acc_count = start_sent - [" "] #subtract all empty spaces in array
fin_sent = start_sent.gsub(/[a-zA-Z]/, "_").split("")

while sent_arr.count("") < acc_count.count
    puts "Guess en letter: "
    guess = gets.chomp.downcase
end