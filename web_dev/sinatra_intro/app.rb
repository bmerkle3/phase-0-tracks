# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/great_job/:person' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end



# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/students_age/:age' do
  age = params[:age]
  students = db.execute("SELECT * FROM students WHERE age=?", age)
  students.to_s
  

end

get '/contact/:address' do
  "headquarters is located: #{params[:address]}"
end

get '/add/:number_1/:number_2' do
  one = params[:number_1]
  two = params[:number_2]
  answer = one.to_i + two.to_i
  "#{one} + #{two} is #{answer}"
end


##############################################################
#Release 2

#1.  Is Sinatra the only web app library in Ruby? What are some others?
##it isn't the only web app library. Others include Ruby on Rails, Merb, Nitro, and Camping

#2Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
## No, they aren't the only options. Other options include Heroku, Mongo, MySQL, PostgreSQL, Firebird...

#3 What is meant by the term 'web stack'?
## A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server.



