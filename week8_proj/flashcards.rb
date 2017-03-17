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
    problem_set INTEGER
  );

SQLite3

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

