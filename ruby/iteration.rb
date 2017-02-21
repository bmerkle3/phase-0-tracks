# def practice_method
#   puts "Running..."
#   status = "Complete."
#   yield(status)
# end

# practice_method { |status| puts "status: #{status}"}


# actors = [ "Julia Roberts", "Tom Hanks", "Mel Gibson" ]
#   actors.each do |actor|
#     puts actor
#   end
#   actors.map! do |lower_case|
#     puts lower_case.downcase
# end


# actors_movies = {
#   "Julia Roberts" => "Pretty Woman", 
#   "Tom Hanks" => "Forrest Gump",
#   "Mel Gibson" => "Lethal Weapon",
#   "Reese Witherspoon" => "Legally Blonde"
# }
  
# actors_movies.each do |actor, movie|
#   puts "#{actor} was in #{movie}"
# end

# upcase_actors_movies = actors_movies.map do |actor, movie|
#   movie.upcase
# end

# p upcase_actors_movies


# array1 = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

# p array1.delete_if { |array1| 
#    array1 < 2}


# p array1.keep_if { |array1|
#   array1 > 2 }

# p array1.select {|x|
#   x > 3  }


array2 = [ "orange", "green", "blue", "red", "yellow", "aqua"]
 
 array2.each do |colors|
    colors.length
    good_length = 4 
   if colors.length > good_length
   p colors.chop
   while good_length == false

   end
     good_length = true

  end
 p 
end

   # while good_length > 4 
   # colors.chop
   
 # end
 # end
 # puts colors


