# 1. allows user to enter a name and have it stored as a variable temporarily
puts "enter original name:"
original_name = gets.chomp

# 2. create a vowel data structure containing replacement vowels for new spy name
#  --> within the next_vowel method

#  pool of consonants to create new spy name

# . use .downcase method to make all characters lower case
working_copy_name = original_name.downcase.split('')

# .  use the .split or .chars method to break apart letters

# for each letter, see if the character matches the vowel array
  # if it does, switch to the next index in the array (#map or #each)
  # if not, leave the letter alone. 
  # 


  # collection is an array
def next_vowel(collection)
  vowel_hash = { a: "e", e: "i", i: "o", o: "u", u: "a" }

  collection.map do |letter|
    vowel_hash[letter.to_sym] || letter 
  end
  
end 
 
p next_vowel(working_copy_name)

def next_consonant(array_version)
  consonant_hash = {b: "c", c: "d", d: "f", f: "g", g: "h", h: "j", j: "k", k: "l", l: "m", m: "n", n: "p", p: "q", q: "r", r: "s", s: "t", t: "v", v: "w", w: "x", x: "y", y: "z", z: "b" }

  array_version.map do |letter|
    consonant_hash[letter.to_sym] || letter
  
  end


end

p next_consonant(working_copy_name)

p next_consonant(next_vowel(working_copy_name))



  

# if not, see if it matches consonant array
  # if it matches in the consonant array, switch to the next index in the array

# if other character like a space or - or something, keep the same.
# . use a .replace_if method


# use .join method to put characters together again

























