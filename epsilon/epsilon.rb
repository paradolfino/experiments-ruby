#each, times, loop do, single line code blocks
def form_area_codes(city)
    area_code = [rand(9), rand(9), rand(9)]
    return {city: city, code: area_code.join('')}
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
    directory.each { |k,v| directory.delete(k) if k === "" }
    return directory
end

def show_dir
    dir = make_directory
    puts "The cities available are: "
    dir.each { |k, v| puts "#{k[:city]} at AC: #{k[:code]}" }
end


loop do
    puts "Would you like to look up a city?"
    puts "(Y/N)"
    input = gets.chomp
    if input.upcase === "Y"
        show_dir
        break
    end
end