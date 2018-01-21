#api - built in httparty methods
require 'rubygems'
require 'httparty'

response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')