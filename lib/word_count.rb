class String
  define_method(:counter) do |word_to_count|
    result = 0
    upcased_word = word_to_count.upcase()
    sentence = self.gsub(/\W/, ' ')
    words = sentence.upcase().split()
    words.each do |word|
      if word == upcased_word
        result += 1
      end
    end
    result
  end
end
