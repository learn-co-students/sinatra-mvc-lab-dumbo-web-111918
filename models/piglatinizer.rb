class PigLatinizer 

  def piglatinize(input)
    input.split(" ").length == 1 ? piglatinize_word(input) : piglatinize_sentence(input)
  end


  def is_consonant?(chara)
    !chara.match(/[aAeEiIoOuU]/) 
  end

  def piglatinize_word (word)
   #  starts with vowel
    if !is_consonant?(word[0])
    word = word + "w"
   #starts with 3 consonants
    elsif is_consonant?(word[0]) && is_consonant?(word[1]) && is_consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
   # starts with 2 consonants
    elsif is_consonant?(word[0]) && is_consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    #  starts with 1 consonant
    else
    word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

    def piglatinize_sentence(sentence)
      sentence.split.map { |word| piglatinize_word(word) }.join(" ")
    end

end