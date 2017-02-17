def encrypt (code)
  counter = 0
new_code = ""

  while counter < code.length
  
    new_code = new_code + code[counter].next
   
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
    # puts characters.index("code[counter]")
    # code[counter]
    new_code += characters[characters.index(code[counter]) - 1] 
    # new_code += "zabcdefghijklmnopqrstuvwxyz"["zabcdefghijklmnopqrstuvwxyz".index(code[counter]) - 1]
   
    counter += 1

  end
  
puts new_code

end


puts decrypt ("zoo")









