class String
  define_method(:counter) do |word_to_count|
    result = 0
    upcased_word = word_to_count.upcase
    sentence = self.gsub(/\W/, ' ')
    words = sentence.upcase.split
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
    words = self.gsub(/\W/, ' ').split
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

class String
  define_method(:vowel_counter) do
    vowels = ["a", "e", "i", "o", "u", "y"]
    number_of_vowels = 0
    chars = self.downcase.split("")
    chars.each do |char|
      vowels.each do |vowel|
        if char == vowel
          number_of_vowels += 1
        end
      end
    end
    number_of_vowels
  end
end

class String
  define_method(:consonant_counter) do
    consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q,' 'r', 's', 't', 'v', 'w', 'x', 'z']
    number_of_consonants = 0
    chars = self.downcase.split("")
    chars.each do |char|
      consonants.each do |consonant|
        if char == consonant
          number_of_consonants += 1
        end
      end
    end
    number_of_consonants
  end
end
