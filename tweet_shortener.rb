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

def word_substituter(tweet)
  tweet_array = tweet.split
  keys = dictionary.keys
binding.pry
end
