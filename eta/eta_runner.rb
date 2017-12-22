require 'pp'
require_relative 'eta'

puts "What is your name?"

eta_name = gets.chomp

puts "#{eta_name}, great! What's your email?"

eta_mail = gets.chomp

eta1 = Eta.new eta_name, eta_mail

pp eta1

eta1.save

