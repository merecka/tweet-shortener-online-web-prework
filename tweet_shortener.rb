# Here is the list of words and their substitutes:
# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"

require 'pry'

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to"=>'2',
    "two"=> '2',
    "too"=> '2',
    "For" => '4',
    "for" => '4',
    "four"=> '4',
    'be'=> 'b',
    'you'=> 'u',
    "at"=> "@",
    "and"=> "&"
  }
end

def word_substituter(tweet)
  new_tweet_arry = []
 # dictionary_keys_arry = []
  # tweet_arry = tweet.split()
  tweet.split.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      word
    end
    new_tweet_arry << word
  end
  new_tweet_phrase = new_tweet_arry.join(" ")
  new_tweet_phrase
 # end.join(" ")
  
end

def bulk_tweet_shortener(tweet)
  tweet.collect do |phrase|
   new_tweet_arry = []
    phrase.split.collect do |word|
      if dictionary.keys.include?(word)
        word = dictionary[word]
      else
        word    
      end
     new_tweet_arry << word 
    end
    new_tweet_phrase = new_tweet_arry.join(" ")
   puts new_tweet_phrase
  end
end
  
# def word_substituter(tweet)
#   tweet_arry = []
#   dictionary_keys_arry = []
#   tweet_arry << tweet.split(' ')
#   dictionary_keys_arry << dictionary.keys
#   tweet_arry.each do |word|
#     dictionary_keys_arry.each do |x|
#       binding.pry
#       if word.include?(x)
        
#         tweet_arry << original_words[word]
#       end  
#     end
#   end
# tweet_arry.join(" ")
# end