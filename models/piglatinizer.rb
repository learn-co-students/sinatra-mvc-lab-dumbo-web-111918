# require 'pry'

class PigLatinizer



  def piglatinize(string)
    string.split(" ").collect{|word| latinize_word(word) }.join(" ")
  end


  def latinize_word(word)
    if begin_vowel?(word)
      add_yay(word)
    else
      switch_consonants(word)
    end
  end

  private

  def begin_vowel?(word)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(word.split("").first.downcase)
  end

  def add_yay(word)
    word << "way"
  end

  def switch_consonants(word)
    vowels = ["a", "e", "i", "o", "u"]
    origin_str = word.split('')
    word.split('').collect do |c|
      if vowels.include?(c)
        break
      else
        # binding.pry
        add = origin_str.shift
        origin_str << add
      end
    end
    origin_str.join << "ay"
  end

end

# a = PigLatinizer.new("Hello")
# binding.pry
