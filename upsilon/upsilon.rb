#regular expressions

# string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

# p string =~ /quick/

# p string =~ /z/ ? "Valid" : "Invalid"

# p string =~ /Z/i ? "Valid" : "Invalid" #case insensitive

# p string.to_enum(:scan, /\d+/).map { Regexp.last_match } #scans and returns all of the integers

# VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

# def is_valid_email? email
#     email =~ VALID_EMAIL_REGEX ? "Valid" : "Invalid"
# end

# p is_valid_email?("zozo@zoho.com")
# p is_valid_email?("zozozohocom")


IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def validated_ip? ip
    ip =~ IP_ADDRESS_REGEX ? "valid" : "not valid"
end

p validated_ip?("999.99.0.0")

