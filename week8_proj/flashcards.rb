#require gems
require 'sqlite3'

#create database- sqlite3
db = SQLite3::Database.new( "mathflashcard.db" )

#delimiters
create_student_cmd = <<-SQLite3
  CREATE TABLE student(
    id INTEGER PRIMARY KEY, 
    name VARCHAR(255)
  );

SQLite3

create_problem_cmd = <<-SQLite3
  CREATE TABLE problem(
    id INTEGER PRIMARY KEY, 
    individ_problem VARCHAR(255),
    problem_set INTEGER)
  );

SQLite3

create_students_problems_cmd = <<-SQLite3
  CREATE TABLE students_problems(
    id INTEGER PRIMARY KEY, 
    answered_incorrect INTEGER, 
    answered_correct INTEGER,
    id_student INTEGER,
    id_problem INTEGER,
    FOREIGN KEY (id_student) reference student(id),
    FOREIGN KEY (id_problem) reference problem(id)
  );

SQLite3

#create student table (if not already there)
db.execute(create_student_cmd)

# db.excecute(create_problem_cmd)

# db.excecute(create_students_problems_cmd)