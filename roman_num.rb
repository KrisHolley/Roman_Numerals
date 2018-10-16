def romanize(number)
	letters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
	values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
	roman = letters.zip values
	# puts roman
	n = number
	numerals = ""
	roman.each do |v|
		# print v
		numerals += v[0] * (n/v[1])
		n = n%v[1]
		# print numerals
	end
	return numerals
end
# romanize(4)
def arabic(romans)
	letters = ["CM", "M", "CD", "D", "XC", "C", "XL", "L", "IX", "X", "IV", "V", "I"]
	values = [900, 1000, 400, 500, 90, 100, 40, 50, 9, 10, 4, 5, 1]
	arabic_number = letters.zip values
	# puts arabic_number
	number = 0
	arabic_number.each do |v|
		number += v[1] * romans.scan(/#{v[0]}/).count
		romans = romans.sub(/#{v[0]}/, "")
	end
	return number
end

# arabic(4)