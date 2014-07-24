def num_words (number)
  number = number.to_i
  number_hash = {90 => "ninety", 80 => "eighty", 70 => "seventy",60 => "sixty",
                 50 => "fifty",40 => "forty",30 => "thirty",20 => "twenty",19 => "nineteen",
                 18 => "eighteen",17 => "seventeen",16 => "sixteen",15 => "fifteen", 14 => "fourteen",
                 13 => "thirteen", 12 => "twelve",11 => "eleven",10 => "ten",9 => "nine",8 => "eight",
                 7 => "seven", 6 => "six",5 => "five",4 => "four",3 => "three",2 => "two", 1 => "one",}

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
