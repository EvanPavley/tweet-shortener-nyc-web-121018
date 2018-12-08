def dictionary
  dictionary_hash = {
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
  #convert the tweet to an Array
  #compare each element of the new tweet array with the hash key
  #if an element is that key replace it with the value hash[key] => value
  #return the new tweet as a string?
  
  tweet.split(" ").map { |word|
    dictionary.keys.include?(word.downcase) ? dictionary[word.downcase] : word
  }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  
  tweet.length > 140 ? word_substituter(tweet)[0..136] << "..." : tweet
end

