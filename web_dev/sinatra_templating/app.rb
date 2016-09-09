# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/reader' do 
	@individual = db.execute("SELECT * from students WHERE name=?",params['name'])
    @person = ""
  @individual.each do |student|
    
    @person << "Name: #{student['name']}<br>"
    @person << "Age: #{student['age']}<br>"
    
  end
  @person
	erb :reader
end




# add static resources
=begin
	
rescue Exception => e
	
end
Create an HTTP route that will respond with the template you created in the previous release.
Add an ERB template to the application in phase-0-tracks/web_dev/sinatra_templating. It can be relevant to the other pages or something totally different, but it should use at least one dynamic piece of data (which you'll populate in the next release).
=end

get '/students/reader' do
	erb :reader
	
end	

