#new method syntax for ruby 2.3 practice

def print_address city:, state:, zip:
    puts city
    puts state
    puts zip
end

print_address city: 'Arlington', "Tx", '76014'