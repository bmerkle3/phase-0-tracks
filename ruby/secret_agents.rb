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
  
puts new_code

end

# encrypt ("braidy")
# encrypt ("computer")



def decrypt(code)
  counter = 0
new_code = ""
characters = "abcdefghijklmnopqrstuvwxyz"


  while counter < code.length
    
    new_code += characters[characters.index(code[counter]) - 1] 
    
    counter += 1

  end
  
puts new_code

end


encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")









