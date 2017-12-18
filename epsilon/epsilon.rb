def form_area_codes(city)
    area_code = [rand(9), rand(9), rand(9)]
    return {city: city, code: area_code}
end

def form_city
    possibles = ['a','e','i','o','u','st','sk','ba','bo','bi','ch','ca','co','da','de','fe','fa','ma','mo','na','th']
    possiblesArr = []
    rand(10).times { possiblesArr.push(possibles[rand(possibles.length)]) }
    form_area_codes(possiblesArr.join(''))
end

def make_directory
    directory = []
    rand(10).times { directory.push(form_city) }
    return directory
end

puts make_directory