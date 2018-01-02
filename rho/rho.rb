class ApiConnector
    attr_accessor :title, :description, :url

    def initialize(title:, desc:, url: "google")
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

class SmsConnector < ApiConnector

end


api = ApiConnector.new(title: 'test', url: 'test',desc: 'test')

api.testing_init
