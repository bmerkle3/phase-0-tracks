# method to swap first and last names
  # input as one string (space between the names)
  # split names into two objects of an array
  # reverse object order of array
  # join names together again into one string
  # returns string


# method to swap vowels for vowel replacements
  # takes array of individual characters
  # set up hash of keys with original vowels, values of new vowels 
  # => a>e, e>i, i>o, o>u, u>a
  # iterate through array with if/elsif statement
  # if the array object exists in hash as a key, replaces with value 
  # => elsif the array object's exists as uppercase key, replace with uppercase value
  # => else the array object doesn't exist, leaves object alone
  # returns modified array 

# method to swap cons. 
  # takes array of individual characters
  # set up hash of keys with original cons., values of new cons. 
  # => b>c, c>d, d>f... z > b
  # iterate through array with if/elsif statement
  # if the array object exists in hash as a key, replaces with value 
  # => elsif the array object's exists as uppercase key, replace with uppercase value 
  # => else the array object doesn't exist, leaves object alone
  # returns modified array 

# alias maker
  #takes string
  #runs swap first and last name method
  #splits string into individual characters that are stored in array
  #runs swap vowels method
  #runs swap cons. method
  # joins array back into string with two names
  # returns string


def swap_names(full_name)
  names = full_name.split(' ')
  names.reverse!
  names.join(' ')
end

def swap_vowels(name_characters)
  vowels = {"a" => "e", "e" => "i", "i" => "o",  "o"=> "u", "u" => "a"}
  name_characters.map! do |letter|
    if vowels.include?(letter)
      vowels[letter] 
    elsif vowels.include?(letter.downcase)
      vowels[letter.downcase].upcase
    else
      letter
    end
  end
end

def swap_cons(name_characters)
  consonents = {"b" => "c", "c" => "d", "d" => "f", "f" => "g", "g" => "h", "h" => "j", "j" => "k", 
    "k" => "l", "l" => "m", "m" => "n", "n" => "p", "p" => "q", "q" => "r", "r" => "s", "s" => "t",
    "t" => "v", "v" => "w", "w" => "x", "x" => "y", "y" => "z", "z" => "b"}
  name_characters.map! do |letter|
      if consonents.include?(letter)
        consonents[letter] 
      elsif consonents.include?(letter.downcase)
        consonents[letter.downcase].upcase
      else
        letter
      end
    end
end

def alias_maker(name)
  reversed_names = swap_names(name)
  characters = reversed_names.split('')
  characters_swapped_v = swap_vowels(characters)
  final_array = swap_cons(characters_swapped_v)
  final_array.join('')
end

#interface

  name = ""
  alias_history = {}

until name == "quit"

  puts "enter a name:"
  name = gets.chomp
    unless name == "quit"
      final_alias = alias_maker(name)
      p final_alias
      alias_history[name] = final_alias
    end
end

p alias_history

 of

