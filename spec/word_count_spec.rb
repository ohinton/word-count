require('rspec')
require('word_count')

describe('String#counter') do
  it("returns how many times a word appears in a given sentence") do
    expect(("I love cats!").counter("love")).to eq(1)
  end
  it("handles mixed cased words") do
    expect(("I LOVE cats!").counter("Love")).to eq(1)
  end
  it("removes punctuation") do
    expect(("I love cats, cats and more cats!").counter("cats")).to eq(3)
  end
  it("handles numerals") do
    expect(("I have 5 cats!").counter("5")).to eq(1)
  end
end

describe('String#word_counter') do
  it("returns how many words are in a given string") do
    expect(("I love cats!").word_counter()).to eq(3)
  end
end

describe('String#char_counter') do
  it("returns how many characters are in a given string") do
    expect(("I love cats!").char_counter()).to eq(12)
  end
end

describe('String#vowel_counter') do
  it("returns how many vowels are in a given string") do
    expect(("I love cats!").vowel_counter()).to eq(4)
  end
end

describe('String#consonant_counter') do
  it("returns how many vowels are in a given string") do
    expect(("I love cats!").consonant_counter()).to eq(5)
  end
end
