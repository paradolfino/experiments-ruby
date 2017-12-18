
def form_city
    possibles = ['a','e','i','o','u','st','sk','ba','bo','bi','ch','ca','co','da','de','fe','fa','ma','mo','na','th']
    possiblesArr = []
    rand(10).times { possiblesArr.push(possibles[rand(possibles.length)]) }
    makeCities(possiblesArr)
end

def make_city(arr)
    form_area_codes(arr.join(''))
end

def form_area_codes(city)
end