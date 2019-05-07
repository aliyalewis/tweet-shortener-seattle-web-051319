def dictionary
  dictionary = {"hello" => "hi", "to, two, too" => "2", "for, four" => "4", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(string)
  string_array = string.split.map do |word|
    if dictionary.key.include?(word)
      word = dictionary[word]
    else
      word
      end
    end
    puts string_array.join(" ")
end
