#new method syntax for ruby 2.3 practice

# def print_address city:, state:, zip:
#     puts city
#     puts state
#     puts zip
# end

#print_address city: 'Arlington', state: "Tx", zip: '76014'

# def sms_generator api_key, num, msg, locale

# end

# #sms_generator 5555555, 'asdalskdlas', 'hi', 'us' order matters

# sms_generator num: 5555555, api_key:'asdalskdlas', msg: 'hi', locale: 'us' #named arguments


def stream_movie title:, lang: "ENG"
    puts title
    puts lang
end

stream_movie title: "FFFREAK"