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
