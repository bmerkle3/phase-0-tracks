
def calculate(i1, i2, o)
  if o == "+" 
    i1 + i2
  elsif o == "-"
    i1 - i2
  elsif o == "*"
    i1 * i2
  elsif o == "/"
    i1 / i2 
  end
end

p calculate(1, 2, "+")






# addition_input = []
# addition_problem = nil

# until addition_problem == "done"
#   puts "enter an addition problem (use spaces between values)"
#     addition_problem = gets.chomp 
#     addition_input = addition_problem.split(' ')
     
  
  
#   def calculate(integer1, integer2)
#     integer1 + integer2

#   end
  
  
#   p solution = calculate(addition_input[0].to_i,  addition_input[-1].to_i)

# solutions_database = {}


# end 

# solutions_database [solution] = addition_problem
# puts  "number of calculations performed:"
# puts solutions_database.length
  
#   solutions_database.each do |i1, i2|
#     p "#{i1} + #{i2} is" 
 
#   end


# def calculate(a, op, b)
#    a.send(op b) 
# end

# p calculate(2, ":+" , 3)

h = {a: "apple", b: "banana", c: "candy", d: "berries"}

 p h.key("banana")


# p get_key_to_print("banana")




  # operations = { +: "+", -: "-", *: "*", /: "/"}

  operations 
p operations["+"]

def add(i1, i3, c)
  operations = {"+" => "+","-" => "-", "*" => "*", "/" => "/"}
 p operations.send["+"]

  # p i1 o.send i3
end

p add(2, 4, "+")


#store calculations in string, then smash into an array


# p add( 1, +, 3)

# https://devbootcamp.instructure.com/courses/143/quizzes/2103?module_item_id=40813
