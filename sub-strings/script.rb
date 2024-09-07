def substrings(word, dictionary)
  result = {}
  word_length = word.length

  dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

  dictionary.each do |dict_word|
    if word.include?(dict_word)
      count = word.scan(dict_word).length
      result[dict_word] = count
    end
  end
  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
