def dictionary
  dictionary = {"hello" => "hi", "to, two, too" => "2", "for, four" => "4", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split.map do |word|
    if dictionary.key.include?(word)
      word = dictionary[word]
    else
      word
      end
    end
    puts tweet_array.join(" ")
end
