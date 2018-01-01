class ApiConnector
    attr_accessor :title, :description, :url

    def initialize title,desc,:url
        @title = title
        @description = description
        @url = url
    end

    def testing_init
        p @title
        p @desc
        p @url
    end
end

