class ApiConnector
    attr_accessor :title, :description, :url
end

api = ApiConnector.new
api.title = "Udemy"
api.url = "https://www.udemy.com/comprehensive-ruby-programming-tutorial/learn/v4/t/lecture/4424046?start=0"
puts api