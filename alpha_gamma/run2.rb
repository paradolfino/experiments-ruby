#api - built in httparty methods
require 'rubygems'
require 'httparty'
ENV['SSL_CERT_FILE'] = 'D:\RailsInstaller\cacert.pem'
response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')


# puts response.body
# puts response.code
puts response.message