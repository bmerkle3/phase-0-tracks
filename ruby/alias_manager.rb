# 1. allows user to enter a name and have it stored as a variable temporarily
puts "enter original name:"
original_name = gets.chomp





# . use .downcase method to make all characters lower case
# p working_copy_name = original_name.downcase.split('  ')
# .  use the .split or .chars method to break apart string into 2 items in array

# p working_copy_name = working_copy_name.reverse

p working_copy_name = original_name.downcase.split('')

# 2. create a vowel data structure containing replacement vowels for new spy name
#  --> within the next_vowel method
# for each letter, see if the character matches the vowel hash
  # if it does, look at the next key (#map or #each)
  # if not, leave the letter alone. 

  # collection is an array
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



p nexted_letters =  next_consonant(next_vowel(working_copy_name)).join

def name_to_array (variable)
  variable.split(' ').reverse
end

p spy_name_order = name_to_array(nexted_letters)

# def capitalize (n)

# spy_name_order.join(' ')

# end
 
#  p capitalize(spy_name_order)



# # alias_name_as_array = nexted_letters.split.map(&:capitalize).join(' ')


# alias_name_as_array = nexted_letters.split(' ')
# p alias_name_as_array
# correct_order_alias = alias_name_as_array.reverse.to_s


# final_alias = correct_order_alias

# puts final_alias.split.map(&:capitalize).join(' ')




# def swap_names(array_of_names)
#   array.reverse! { |array_of_names| puts array_of_names}
# end
 
  


  


# if other character like a space or - or something, keep the same.
# . use a .replace_if method


# use .join method to put characters together again

























