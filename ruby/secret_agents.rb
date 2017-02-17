#encrypting process- each character moves forward one letter in alphabet"
def encrypt (code)
  counter = 0
new_code = ""
characters = "abcdefghijklmnopqrstuvwxyz"

  while counter < code.length
    if code[counter] == "z"
      new_code += "a"
    else
    new_code = new_code + code[counter].next

    # new_code += characters[characters.index(code[counter]) + 1]
   end
    counter += 1

  end
  
p new_code

end


#decrypting process- each character moves backwards one letter in alphabet"
def decrypt(code)
  counter = 0
new_code = ""
characters = "abcdefghijklmnopqrstuvwxyz"


  while counter < code.length
    
    new_code += characters[characters.index(code[counter]) - 1] 
    counter += 1

  end
  
p new_code

end


# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# encrypt("swordfish")
# decrypt("swordfish")
# 
# encrypt(decrypt("swordfish"))






#interface to ask user if they want to encrypt or decrypt
puts "Do you want to encrypt or decrypt?"
  process = gets.chomp


    if process == "encrypt"
      puts "Please enter your password."
    code = gets.chomp
    encrypt(code)

    elsif process == "decrypt"
      puts "Please enter your password."
    code = gets.chomp
    decrypt(code)

    else 
    puts "inupt unknown"

end




