####additional feature to add: be able to choose which operation





#require gems
require 'sqlite3'

#create database- sqlite3
db = SQLite3::Database.new( "mathflashcard.db" )

#delimiters
create_student_cmd = <<-SQLite3
  CREATE TABLE IF NOT EXISTS student(
    id INTEGER PRIMARY KEY, 
    name VARCHAR(255)
  );

SQLite3

create_problem_cmd = <<-SQLite3
  CREATE TABLE IF NOT EXISTS problem(
    id INTEGER PRIMARY KEY, 
    individ_problem VARCHAR(255),
    answer INTEGER,
    problem_set INTEGER
  );

SQLite3


#probably move correct and incorrect columns to student table
create_students_problems_cmd = <<-SQLite3
  CREATE TABLE IF NOT EXISTS students_problems (
    id INTEGER PRIMARY KEY, 
    answered_incorrect INTEGER, 
    answered_correct INTEGER,
    id_student INT,
    id_problem INT,
    FOREIGN KEY (id_student) references student(id),
    FOREIGN KEY (id_problem) references problem(id)
  );

SQLite3

#create student table (if not already there)
db.execute(create_student_cmd)

db.execute(create_problem_cmd)

db.execute(create_students_problems_cmd)

#insert 

#method to create new student by user input
  #takes string 

def new_student (db, name)
  db.execute("INSERT INTO student (name) VALUES (?)", [name])
end

#method to choose which operator


#method to populate problems table so that user can specify they will practice multiplying 1s-10s 
#takes in database, integers
#  populates all problems 
  # =>  starts at starting integer for first number, prints integers by increment of 1 in each row of column until it reaches the second integer's value
  # => starts second integer at starting integer, until it reaches second integer's value
  # => saves numbers in a string with the appropriate operator in the middle. 
#check for duplicates in output (save into array, or find out how to check dupes in SQL... it is possible). Delete duplicates
#output: string of mathematical problems

#these variables out of place. incorp into user interface section##################
# integer1 = gets.chomp
# integer2 = gets.chomp

def populates_problem_tbl(i1, i2)
  if i1 < i2
   range = (i1..i2)
  else 
    range = (i2..i1)
  end
  orig1 = i1
  orig2 = i2

  range.each do |i|
    p i
    # p i2
    until i2 <= i1  
      # p i1
      # p i2
      second_integer = (i2 -= 1) + 1
      p problem = "#{i1} * #{second_integer}"
    end
    i1 += 1
  end
     
end

 #    until i1 > i2  
 #  second_integer = (i1 += 1) - 1
 #  p problem = "#{first_integer} * #{i2}"
 # end 
     
  # db.execute("INSERT INTO problem (individ_problem) VALUES (?)", [problem])
# end


# def decrease_i2(i1, i2)
  
#   end
# end

p populates_problem_tbl(0, 8)

# p decrease_i2(0, 8)

# x = (11..11)
#  x.each {|i| p i }

#method to calculate answers of problems -- 
  # => takes in string of mathematical problems
  # => if operator is *, use the * in problem
  # => index 0 of string is first integer
  # => index -1 is second integer
  # => solve problem, 
  # => save answer into problem table

# method to populate most of students_problems table (minus answered correct/incorrect? 



 #assigns each individual problem to a problem-set consisting of max. 5 problems
 # => problem set variable starts at 1, repeats the group number 5 times so groups are 5 problems long.

#method for user interface: prints next number to be solved
#query of problem table.

#method to compare answer entered with answer provided
# => input: integer, string (of problem to solve) or corresponding Primary Key) problem-set counter starts at 1
#until problem-set counter equals highest multipliers minus lowest multiplier: 
#if the string put in is equal to the query of the table from answer column, adds the string ID to the answered correct column in the 'student' table. 
#print congratulatory message
#move to next problem in problem set
#if the string put in is not equal to the query of the table from answer column, adds the string to the answered incorrect column in the 'student' table.
  #duplicate problem in the 'problem' table so they will have to get the problem correct one extra time after they achieve correct answer.
  #move to next problem in problem set
# run query of tables for student's questions answered incorrectly of the current problem set 
#if questions were answered incorrectly or have nothing filled in, repeat those questions 
#otherwise, add 1 to problem-set counter to start next problem set.




  


