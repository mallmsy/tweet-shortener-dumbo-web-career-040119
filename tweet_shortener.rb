require 'pry'

def dictionary
  word_replacements = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be"  => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweets)
  new_tweet = []
  tweets.split.each_with_index do |string, index|
    word_to_check = string.downcase
    if dictionary[word_to_check]
      new_tweet << dictionary[word_to_check]
    else
      new_tweet << string
    end
  end
    new_tweet.join(" ")
end



def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end




def selective_tweet_shortener(long_tweet)
  if long_tweet.length > 140
    word_substituter(long_tweet)
  else
    return long_tweet
  end
end


def shortened_tweet_truncator(longer_tweet)
  modified_tweet = word_substituter(longer_tweet)
  if modified_tweet.length > 140
    return "#{modified_tweet[0..136]}..."
  else
    return modified_tweet
  end
end
