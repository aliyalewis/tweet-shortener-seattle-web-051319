def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
      end
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do|tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
  tweets
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0...137] + ("...")
  else
    word_substituter(tweet)
  end
end
