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
words = tweet.split
dict = dictionary

  words.collect do |word|
    dictionary.collect do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
    words.join(" ")
end

# dict = dictionary
#   words = tweet.split(" ")
#
#   words.collect do |word|
#     dictionary.collect do |key, value|
#       if word == key
#         word.replace(value)
#       end
#     end
#   end
#   words.join(" ")
# end
