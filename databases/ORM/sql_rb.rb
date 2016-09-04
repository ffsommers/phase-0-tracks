

#create sqlite3 db 
# add automate fake data using faker
# user interface
# retrieve data
# send data to phone using gem (sms-easy?)


# design -- encouraging tweets from fake friends / texts 
 # create tweets from random people 
 	# faker creates the user names
 	# create  large arrays for nouns, verbs, adjectives etc to randomly be put together in a tweet.

# require gems
 require 'sqlite3'
 require 'faker'

 # create sqlite3 database
  db = SQLite3::Database.new( "messages.db")

     
 # string delimiters
   create_table_cmd = <<-SQL 
      CREATE TABLE IF NOT EXISTS tweets(
           id INTEGER PRIMARY KEY,
           tweet VARCHAR(255), 
           user VARCHAR(255),
           time int
      	)  
     SQL
 # create a messages table (if its not there already) 
    db.execute(create_table_cmd)
 # add a test message
   #db.execute("INSERT INTO tweets (tweet, age) VALUES ('Frank WHAT WERE YOU THINKING?!?', 10) ")
 
 # retrieve data
   # messages = db.execute("SELECT * FROM tweets")
   # puts messages.class 
   # p messages 
 
#RANDOM TWEET GENERATOR

 
def random_tweet
	opening = ['just', '', '', '', '', 'ask me how i', 'completely', 'nearly', 'productively', 'efficiently', 'last night i', 'the president', 'that wizard', 'a ninja', 'a seedy old man']
 verbs = ['drank', 'drunk', 'deployed', 'got', 'developed', 'built', 'invented', 'experienced', 'fought off', 'hardened', 'enjoyed', 'developed', 'consumed', 'debunked', 'drugged', 'doped', 'made', 'wrote', 'saw'];
 objects = ['my', 'your', 'the', 'a', 'my', 'an entire', 'this', 'that', 'the', 'the big', 'a new form of']
 nouns = ['cat', 'koolaid', 'system', 'city', 'worm', 'cloud', 'potato', 'money', 'way of life', 'belief system', 'security system', 'bad decision', 'future', 'life', 'pony', 'mind']
 tags = ['#techlife', '#burningman', '#sf', 'but only i know how', 'for real', '#sxsw', '#ballin', '#omg', '#yolo', '#magic', '', '', '', '']

   tweet = [opening.sample, verbs.sample, objects.sample, nouns.sample, tags.sample].reject(&:empty?).join(' ')
   tweet
end


 # add lots of messages (automate)
   
   def create_tweets (db, tweet, user)
     db.execute("INSERT INTO tweets (tweet, user) VALUES (?, ?)", [tweet, user])
   end


   20.times do 
    create_tweets(db, random_tweet ,Faker::Name.name)
   end