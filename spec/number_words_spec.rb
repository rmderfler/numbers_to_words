require('rspec')
require('numbers_words.rb')

describe('num_words') do

  it('takes a single digit number and returns it in words')do
    num_words(6).should(eq("six"))
  end

  it('takes a teen-number and returns it in words')do
    num_words(16).should(eq("sixteen"))
  end

  it('takes a double digit number and returns it in words')do
    num_words(24).should(eq("twenty four"))
  end

  it('takes a three digit number and returns it in words')do
    num_words(248).should(eq("two hundred forty eight"))
  end

end

describe('high_numbers') do

  it('takes a number and returns it in words')do
    high_numbers(6000).should(eq("six thousand "))
  end

  it('takes a number and returns it in words')do
      high_numbers(6001).should(eq("six thousand one"))
  end
  it('takes a number and returns it in words')do
    high_numbers(64321).should(eq("sixty four thousand three hundred twenty one"))
  end
  it('takes a number and returns it in words')do
    high_numbers(6432100).should(eq("six million four hundred thirty two thousand one hundred"))
  end
  it('takes a number and returns it in words')do
    high_numbers(123070006001).should(eq("one hundred twenty three billion seventy million six thousand one"))
  end
  it('takes a number and returns it in words')do
    high_numbers(1000000000000).should(eq("One Trillion!"))
  end
end
