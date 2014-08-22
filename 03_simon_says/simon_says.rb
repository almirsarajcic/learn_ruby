def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(something, number = 2)
  result = ''

  number.times do
    result += "#{something} "
  end

  result[0..-2]
end

def start_of_word(string, to)
  string[0...to]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  words = string.split

  little_words = %{ the over and }

  words.each_with_index do |word, index|
    words[index] = word.capitalize unless index > 0 and little_words.include?(word)
  end

  words.join(' ')
end
