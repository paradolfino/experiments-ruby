#api
require 'rubygems'
require 'httpary'

class EdutechionalResty
    include HTTParty
    base_uri "edutechional-resty.herokuapp.com"
end