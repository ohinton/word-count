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

class String
  define_method(:word_counter) do
    number_of_words = 0
    words = self.gsub(/\W/, ' ').split()
    words.each do |word|
      number_of_words += 1
    end
    number_of_words
  end
end

class String
  define_method(:char_counter) do
    number_of_chars = 0
    chars = self.split("")
    chars.each do |char|
      number_of_chars += 1
    end
    number_of_chars
  end
end
