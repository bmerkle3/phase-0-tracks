# 1. allows user to enter a name and have it stored as a variable temporarily
puts "enter original name:"
original_name = gets.chomp

# 2. create a vowel variable (possibly an array?)to replace vowels for new spy name
# 3. create consonant variable (possibly an array?) for pool of consonants to create new spy name

# . use .downcase method to make all characters lower case
# .  use the .split or .chars method to break apart letters

# for each letter, see if the character matches the vowel array
  # if it does, switch to the next index in the array


# if not, see if it matches consonant array
  # if it matches in the consonant array, switch to the next index in the array

# if other character like a space or - or something, keep the same.
# . use a .replace_if method


# use .join method to put characters together again
#  use .capitalize to return names to caps on 1st letters only