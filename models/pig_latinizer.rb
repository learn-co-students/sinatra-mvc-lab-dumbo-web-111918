class PigLatinizer

  def piglatinize(text)
    cons = /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/
    vows = /^[aeiouAEIOU}]/
    
    parsed_words = text.split(" ").map do |word|
      if word.match(vows)
        vowel_start(word)
      elsif word.match(cons)
        consonant_start(word)
      else
        word
      end
    end
    parsed_words.join(" ")
  end
  
  def vowel_start(word)
    word + "way"
  end
  
  def consonant_start(word)
    cons = /^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/
    prefix = word[cons]
    "#{word[(prefix.length)..-1]}#{prefix}ay"
    
  end
end