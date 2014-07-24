def num_words (number)

  number = number.to_i
  number_hash = {900 => "nine hundred",800 => "eight hundred",700 => "seven hundred",
                600 => "six hundred",500 => "five hundred",400 => "four hundred",
                300 => "three hundred",200 => "two hundred",100 => "one hundred",
                90 => "ninety", 80 => "eighty", 70 => "seventy",60 => "sixty",
                50 => "fifty",40 => "forty",30 => "thirty",20 => "twenty",
                19 => "nineteen",18 => "eighteen",17 => "seventeen",16 => "sixteen",
                15 => "fifteen", 14 => "fourteen",13 => "thirteen", 12 => "twelve",
                11 => "eleven",10 => "ten",9 => "nine",8 => "eight",7 => "seven",
                6 => "six",5 => "five",4 => "four",3 => "three",2 => "two", 1 => "one"}

  array = []
    0.upto(number) do
      number_hash.each do |num, word|
        if number >= num
          array << word
          number -= num
          break
        end
      end
    end
  words = array.join(" ")
  words
end

def high_numbers (number)
  if number < 10**3
    result = num_words(number)
  elsif 10**3 <= number && number < 10**6
    thousands(number)
  elsif 10**6 <= number && number <10**9
    millions(number)
  elsif 10**9 <= number && number <10**12
    billions(number)
  elsif number == 10**12
    "One Trillion!"
  end
end

def billions(number)
  number = number.to_i
  billions_num = number /10**9
  result = num_words(billions_num)
  number = number - 10**9*billions_num
  billions_result = result + " billion " + millions(number)
end

def millions (number)
  number = number.to_i
  millions_num = number / 10**6
  result = num_words(millions_num)
  number = number - 10**6*millions_num
  if result == ""
    thousands_result = result + thousands(number)
  else
    millions_result = result + " million " + thousands(number)
  end
end

def thousands (number)
  number = number.to_i
  new_num = number/1000
  result = num_words(new_num)
  number = number - 1000*new_num
  second_result = num_words(number)
  if result == ""
    result = second_result
  else
    result = result + " thousand " + second_result
  end
  result
end
puts high_numbers(12000000000)
