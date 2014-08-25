def translate(string)
  words = string.split

  words.map! do |word|
    capitalized = (word.capitalize == word)
    /^(?<first_phoneme>[^aeiouyq]*(qu)?)(?<rest>\w*)(?<punctuation>.*)/ =~ word
    word = "#{rest}#{first_phoneme}ay#{punctuation}"
    word.downcase!
    word.capitalize! if capitalized
    word
  end

  words.join(' ')
end
