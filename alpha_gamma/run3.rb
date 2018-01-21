#api - custom class
require 'rubygems'
require 'httparty'
ENV['SSL_CERT_FILE'] = 'D:\RailsInstaller\cacert.pem'

class StackEx
    include 'httparty'
    base_uri "api.stackexchange.com"

    def initialize service, page
        @options = {
            query: {
                site: service
            }
        }
    end

    def questions
        self.class.get('/2.2/questions',@options)
    end

    def users
        self.class.get('/2.2/users',@options)
    end
end