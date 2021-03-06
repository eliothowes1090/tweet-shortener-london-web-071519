require 'pry'

# Write your code here.
# dictionary = {
# :hello => "hi",
# :to => {:two => {:too => "2"}},
# :for => {:four => "4"},
# :be => "b",
# :you => "u",
# :at => "@",
# :and => "&"
# }

def dictionary
  conversions = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
    }
end

def word_substituter(tweet)
words = tweet.split(" ")

  words.each_with_index do |word, index|
    dictionary.keys.each do |key, value|
      if word.downcase == key.to_s
        words[index] = dictionary[key]
      end
    end
  end
    words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)

  if shortened_tweet.length > 140
    return shortened_tweet[1..140]
  else
    shortened_tweet
  end
end
