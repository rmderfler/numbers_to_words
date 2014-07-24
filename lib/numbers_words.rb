def num_words (number)
  number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten"}
  #number_arr = number.to_s.split
  array = []
  # number_hash.each do |k,v|
  #   if number == k
  #      result = v
  #   end
  #   array<<result
  # end
  # array.join('')
  result = number_hash[number]
  result
end
