def practice_method
  puts "Running..."
  status = "Complete."
  yield(status)
end

practice_method { |status| puts "status: #{status}"}


actors = [ "Julia Roberts", "Tom Hanks", "Mel Gibson" ]
  actors.each do |actor|
    puts actor
  end
  actors.map! do |lower_case|
    puts lower_case.downcase
end


actors_movies = {
  "Julia Roberts" => "Pretty Woman", 
  "Tom Hanks" => "Forrest Gump",
  "Mel Gibson" => "Lethal Weapon",
  "Reese Witherspoon" => "Legally Blonde"
}
  
actors_movies.each do |actor, movie|
  puts "#{actor} was in #{movie}"
end

upcase_actors_movies = actors_movies.map do |actor, movie|
  movie.upcase
end

p upcase_actors_movies