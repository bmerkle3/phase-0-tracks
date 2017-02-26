# 1. allows user to enter a name and have it stored as a variable temporarily
# puts "enter original name:"
# original_name = gets.chomp

# 2. create a vowel variable (possibly an array?)to replace vowels for new spy name
#  --> needs to be within the next_vowel method

# 3. create consonant variable (possibly an array?) for pool of consonants to create new spy name
# consonant_arr = [ "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
# possible_consonants = "bcdfghjklmnpqrstvwxyz"

# . use .downcase method to make all characters lower case
# working_copy_name = original_name.downcase.split(' ')

# .  use the .split or .chars method to break apart letters

# for each letter, see if the character matches the vowel array
  # if it does, switch to the next index in the array
def next_vowel(original_string)
  

  vowel_arr = [ "a", "e", "i", "o", "u" ]
  match_found = false

  working_copy_name.each do
    if working_copy_name.index[i] == vowel_arr.index[i]
      p "true"
      # working_copy_name.index[i] += vowel_arr.index[i +1]
      # match_found = true
    else
      working_copy_name.index[i] == working_copy_name.index[i]
      p "false"
    end

  end

 end 
 


  

# if not, see if it matches consonant array
  # if it matches in the consonant array, switch to the next index in the array

# if other character like a space or - or something, keep the same.
# . use a .replace_if method


# use .join method to put characters together again
#  use .capitalize to return names to caps on 1st letters only