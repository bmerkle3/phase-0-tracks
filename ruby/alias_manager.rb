

 
original_name = nil
alias_database = {}
until original_name == "quit"
  # 1. allows user to enter a name and have it stored as a variable temporarily
    puts "enter original name or 'quit' to stop"
     original_name = gets.chomp
    
    
    # . use .downcase method to make all characters lower case
    # p working_copy_name = original_name.downcase.split('  ')
    # .  use the .split or .chars method to break apart string into 2 items in array
    
    # p working_copy_name = working_copy_name.reverse
     working_copy_name = original_name.downcase.split('')
    
    # 2. create a vowel data structure containing replacement vowels for new spy name
    #  --> within the next_vowel method
    # for each letter, see if the character matches the vowel hash
      # if it does, look at the next key (#map or #each)
      # if not, leave the letter alone. 
    
      # collection is array
    def next_vowel(collection)
      vowel_hash = { a: "e", e: "i", i: "o", o: "u", u: "a" }
    
      collection.map do |letter|
        vowel_hash[letter.to_sym] || letter 
      end
      
    end 
     
     next_vowel(working_copy_name)
    
    
    
    #  pool of consonants to create new spy name
    def next_consonant(array_version)
      consonant_hash = {b: "c", c: "d", d: "f", f: "g", g: "h", h: "j", j: "k", k: "l", l: "m", m: "n", n: "p", p: "q", q: "r", r: "s", s: "t", t: "v", v: "w", w: "x", x: "y", y: "z", z: "b" }
    
      array_version.map do |letter|
        consonant_hash[letter.to_sym] || letter
      
      end
    
    
    end
    
    
    # use .join method to put characters together again
    
    nexted_letters =  next_consonant(next_vowel(working_copy_name)).join
    
    def name_to_array (variable)
      variable.split(' ').reverse
    end
    
    
    capital_alias_as_array = name_to_array(nexted_letters).map { |first_letter| first_letter.capitalize }
    # final_alias = spy_name_order.map(&:capitalize).join(' ')
    p final_alias = capital_alias_as_array.join(' ')

    # creates a database to save names in
alias_database [final_alias] = original_name

# prints names from database
alias_database.each do |final, original|
  p "#{final} is the spy name for #{original}."
end

end






















