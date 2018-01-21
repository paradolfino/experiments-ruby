#api - built in httparty methods
require 'rubygems'
require 'httparty'

require 'https'

http = Net::HTTP.new('example.com', 443)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

http.cert_store = OpenSSL::X509::Store.new
http.cert_store.set_default_paths
http.cert_store.add_file('/path/to/cacert.pem')

# response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')

# puts response.body