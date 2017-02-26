# 1. allows user to enter a name and have it stored as a variable temporarily
puts "enter original name:"
original_name = gets.chomp





# . use .downcase method to make all characters lower case
working_copy_name = original_name.downcase.split('')
# .  use the .split or .chars method to break apart letters




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



nexted_letters =  next_consonant(next_vowel(working_copy_name)).join

alias_name_as_array = nexted_letters.split.map(&:capitalize).join(' ')
p alias_name_as_array
correct_order_alias = alias_name_as_array.reverse.to_s


final_alias = correct_order_alias.capitalize!

puts correct_order_alias




# def swap_names(array_of_names)
#   array.reverse! { |array_of_names| puts array_of_names}
# end
 
  


  


# if other character like a space or - or something, keep the same.
# . use a .replace_if method


# use .join method to put characters together again

























