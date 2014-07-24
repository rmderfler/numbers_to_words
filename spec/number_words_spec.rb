require('rspec')
require('numbers_words.rb')

describe('num_words') do

  it('take a single digit number and returns it in words')do
  num_words(6).should(eq("six"))
  end

  it('take a single digit number and returns it in words')do
  num_words(6).should(eq("six"))
  end

end
