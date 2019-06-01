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
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else word
    end
  end.joint(" ")
end
