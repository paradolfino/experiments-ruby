class ApiConnector
    attr_accessor :title, :description, :url

    def initialize(title,desc,url = "google")
        @title = title
        @desc = desc
        @url = url
    end

    def testing_init
        p @title
        p @desc
        p @url
    end
end


api = ApiConnector.new('test','test','test')

api.testing_init
