####additional feature to add: be able to choose which operation


#check to see if student is 'new' or 'returning' 


#require gems
require 'sqlite3'

#create database- sqlite3
db = SQLite3::Database.new( "mathflashcard.db" )

#delimiters
create_student_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS student(
    id INTEGER PRIMARY KEY, 
    name VARCHAR(255)
  );

SQL

create_problem_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS problem(
    id INTEGER PRIMARY KEY, 
    individ_problem VARCHAR(255),
    answer INTEGER
  );

SQL
# problem_set INTEGER might be added at later date

#probably move correct and incorrect columns to student table
create_students_problems_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS students_problems (
    id INTEGER PRIMARY KEY, 
    answered_correct BOOLEAN,
    id_student INT,
    id_problem INT,
    FOREIGN KEY (id_student) references student(id),
    FOREIGN KEY (id_problem) references problem(id)
  );

SQL


def populate_students_prob(db, true_o_false, students_id, probs_id)
    # problems_array.each do |this_prob|
      db.execute("INSERT INTO students_problems (answered_correct, id_student, id_problem) VALUES (?, ?, ?);", [true_o_false, students_id, probs_id])
    # end 
end


#method to create new student by user input
  #takes string 
def new_student (db, name)
  db.execute("INSERT INTO student (name) VALUES (?)", [name])
end


#method to populate problems table so that user can specify they will practice multiplying 1s-10s 
#takes in integers
#  populates all problems 
  # =>  starts at starting integer for first number, prints integers by increment of 1 in each row of column until it reaches the second integer's value
  # => starts second integer at starting integer, until it reaches second integer's value
  # => saves numbers into array of strings with the appropriate operator in the middle. 
  # => scrambles array so they show up in random order in game
#output: array of strings
def lists_problems(num1, num2)

  i1 = num1.to_i
  i2 = num2.to_i

  if i1 < i2
   range = (i1..i2)
  else 
    range = (i2..i1)
  end
  orig1 = i1
  orig2 = i2
  prob_array = []

  range.each do |i|
    i2 = orig2
    until i2 <= orig1  
      second_integer = (i2 -= 1) + 1
      prob_array << "#{i} * #{second_integer}"
    end
    i += 1
  end
  prob_array
end
     
#method to calculate answers of problems -- 
  # => takes in an array of string of mathematical problems
  # => breaks each position down into array of 3 items, no spaces
  # => if index(2) is *, use the * in problem
  # => index 0 of string is first integer
  # => index -1 is second integer
  # => output is integer that solves problem 
        # => save answer into problem table
def calculates(problems)
  problems.each do |each_prob|
    calculate_problem(each_prob)
  end
end

def calculate_problem(this_prob)
  digits = this_prob.split" "
    if digits[1] == "*"
     p digits[0].to_i * digits[-1].to_i
  end
end


# method to populate students_problems table 
def populate_students_prob(db, true_o_false, students_id, probs_id)
      db.execute("INSERT INTO students_problems (answered_correct, id_student, id_problem) VALUES (?, ?, ?);", [true_o_false, students_id, probs_id])
end


#method to help populate problem table
#Input: array of strings containing problems
#save the return of each array position into a variable
#output is the variable (a string containing the problem)

def populate_problem_table(db)
    problems_array = lists_problems(input1, input2)
    problems_array.each do |this_prob|
      db.execute("INSERT INTO problem (individ_problem, answer) VALUES (?, ?);", [this_prob, calculate_problem(this_prob)])
    end 
end

 
def problem_given_to_student(array) 
    random_problem = array.sample
    random_problem  
end



 

#method to compare answer entered with answer provided
# => input: integer, string (of problem to solve) or corresponding Primary Key) problem-set counter starts at 1
#do all problems: 
  #if the string put in is equal to the query of the table from answer column, adds the string ID to the answered correct column in the 'student' table. 
#print congratulatory message
#move to next problem in problem set
#if the string put in is not equal to the query of the table from answer column, adds the string to the answered incorrect column in the 'student' table.
#else just moves to another problem
  
  
# run query of tables for student's questions answered incorrectly of the current problem set 
#if questions were answered incorrectly repeat those questions 


########################
#driver code

input1 = ""
input2 = ""


db.execute(create_student_cmd)

db.execute(create_problem_cmd)

db.execute(create_students_problems_cmd)
problems_bank = []


returning_vs_new = ""
until returning_vs_new == "n" || returning_vs_new == "r"
  puts "Are you a new student, or have you played before? If new, enter 'n'. If returning, enter  'r'. "
  returning_vs_new = gets.chomp
end

puts "enter user name:"
user_name = gets.chomp

if returning_vs_new == "n"
    puts "welcome, #{user_name}!"
    new_student(db, user_name)
    user_id = db.execute("SELECT id FROM student WHERE name = ?", [user_name])[0][0]
    puts "the user_id is #{user_id}"
  else  
    puts "Thanks for coming back, #{user_name}!" 
    user_id = db.execute("SELECT id FROM student WHERE name = ?", [user_name])[0][0]
    puts "the user_id is #{user_id}"
end

user_id = db.execute("SELECT id FROM student WHERE name = ?", [user_name])[0][0]

puts "what range of numbers will you practice today, #{user_name}? If you want to practice all multiplication facts from 1 to 10, enter 1 and then enter 10."
puts "first number in range:"
input1 = gets.chomp.to_i
puts "second number in range:"
input2 = gets.chomp.to_i

problems_bank = lists_problems(input1, input2)

current_prob = problem_given_to_student(problems_bank)

correct_answer = db.execute("SELECT answer FROM problem WHERE individ_problem = ?", [current_prob])[0][0]

prob_id = db.execute("SELECT id FROM problem WHERE individ_problem = ?", [current_prob])[0][0]

# while problems_bank.length > 0
  correctness = "false"
  #put in a db.query???- tyler said for efficiency sake place it here
  #possibly bring the correct answer into loop?
  until correctness == "true"
 
    puts "what is #{current_prob}?"
    student_solution = gets.chomp.to_i

    if student_solution == correct_answer
        puts "That is correct!" 
        correctness = "true"
      else 
        
        puts "nope.try again."
        correctness = "false"
    end
        problems_bank.delete(current_prob)
        # At this point the program should loop back to the "what is 'current_prob" at line 220 for a new problem. When I do get the program to loop back, the current problem doesn't generate a new random problem.        
  end
# end

populate_students_prob(db, correctness, user_id, prob_id)

puts "thanks for practicing with me!"





