# THIS APP IS A TWITTER BOT THAT GENERATES RANDOM TWEETS AND STORES THEM IN A DATABASE. 
# THE TWEETS ARE THEN  RANDOMLY ACCESSED FROM THE TABLE WITHIN THE DATABASE AND POSTED 
# TO A TWITTER ACCOUNT CONFIGURED BY THE USER. FOR SECURITY PURPOSES I REMOVED THE 
# CONFIG FOR POSTING FROM MY TWITTER ACCOUNT. TO CONFIGURE YOUR ACCOUNT GO TO
# https://apps.twitter.com AND FOLLOW THE INSTRUCTIONS.  


# required gems
 require 'sqlite3'
 require  'twitter'

 # create sqlite3 database
 db = SQLite3::Database.new( "messages.db")

    create_table_cmd = <<-SQL 
      CREATE TABLE IF NOT EXISTS tweets(
           id INTEGER PRIMARY KEY,
           tweet VARCHAR(255), 
           user VARCHAR(255),
           time int
      	)  
     SQL
  
    db.execute(create_table_cmd)
 
 
#RANDOM TWEET GENERATOR 
def random_tweet
 opening = ['just', '', '', '', '', 'ask me how i', 'completely', 'nearly', 'productively', 'efficiently', 'last night i', 'that wizard', 'a ninja', 'a wise man']
 verbs = ['drank', 'drunk', 'deployed', 'got', 'developed', 'built', 'invented', 'experienced', 'fought off', 'enjoyed', 'developed', 'consumed', 'debunked', 'made', 'wrote', 'saw'];
 objects = ['my', 'your', 'the', 'a', 'my', 'an entire', 'this', 'that', 'the', 'the big', 'a new form of']
 nouns = ['cat', 'system', 'city', 'cloud', 'potato', 'money', 'way of life', 'belief system', 'security system', 'future', 'life', 'mind']
 tags = ['#techlife', '#burningman', '#sf', 'but only i know how', 'for real', '#sxsw', '#ballin', '#omg', '#yolo', '#magic', '', '', '', '']

 tweet = [opening.sample, verbs.sample, objects.sample, nouns.sample, tags.sample].reject(&:empty?).join(' ')
 tweet
end

# populate tweet table with randomly generated tweets
   
def create_tweets (db, tweet)
  db.execute("INSERT INTO tweets (tweet) VALUES (?)", [tweet])
end

100.times do 
  create_tweets(db, random_tweet)
end

#retrieve random tweet string from tweet table in messages.db 

def get_tweet(db) 
  db_tweet = db.execute("SELECT tweet FROM tweets").sample.sample
  db_tweet
end

#!/usr/bin/env ruby
# CONFIG FOR TWITTER GEM - need to enter keys from the twitter account you would like to post to. Keys have been cleared for security purposes.

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "CONSUMER KEY"
  config.consumer_secret     = "CONSUMER SECRET"
  config.access_token        = "ACCESS TOKEN"
  config.access_token_secret = "ACCESS TOKEN SECRET"
end

#USER CONTROL FLOW 
puts "how frequently would you like the bot to post a tweet to twitter? (enter time in seconds)"
seconds = gets.chomp.to_i

# Calculate interval for tweets
day_of_tweets = 86400 / seconds

# sets loop for posting tweets to twitter from database of random tweets. will continually post on interval defined by user until condition is reached. 
while day_of_tweets >= 0
  sleep(seconds)
  client.update(get_tweet(db))
  day_of_tweets -= seconds 
end



