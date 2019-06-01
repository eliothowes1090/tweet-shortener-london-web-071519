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
      if word == key.to_s
        words[index] = dictionary[key.to_s]
      end
    end
  end
    words.join(" ")
end

# array = string.split(" ")
#   array.each_with_index do |words,index|
#     dictionary.keys.each do |x|
#       if x == words
#       array[index] = dictionary[x]
#       end
#       end
#       end
# array.join(" ")
# end
