#api - custom class
require 'rubygems'
require 'httparty'
ENV['SSL_CERT_FILE'] = 'D:\RailsInstaller\cacert.pem'

class StackEx
    include 'httparty'
end