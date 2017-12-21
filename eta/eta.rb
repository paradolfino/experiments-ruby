#Reads in user information that is provided
#Reads in permissions from a json file
#Creates a new user with the assigned permissions
#Saves the user in a new users listing file, if file doesn't exist yet it creates one

require 'json'

class Eta
    attr_accessor :email, :name, :permissions
    def initialize(*args)
        @email = args[0]
        @name = args[1]
        @permissions = Eta.permissions_from_template
    end

    def self.permissions_from_template
        file = File.read 'eta_permissions_template.json'
        JSON.load(file, nil, symbolize_names: true)
    end

    def save
        self_json = {email: @email, name: @name, permissions: @permissions}.to_json
        open('eta.json') do |file|
            file.puts self_json
        end
    end
end