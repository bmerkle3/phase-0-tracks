# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<#swapcase>
# => “InVeStIgAtIoN”
puts "iNvEsTiGaTiOn".swapcase

# "zom".<#insert (num, x)>
# => “zoom”
puts "zom".insert(2, "o")

# "enhance".<c#enter(width)>
# => "    enhance    "
puts "enhance".center(20)

# "Stop! You’re under arrest!".<#upcase>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You're under arrest!".upcase

# "the usual".<insert(-1, "suspects")>
#=> "the usual suspects"
puts "the usual".insert(-1, "suspects")

# " suspects".<#prepend("the usual)"> <#insert(0, "suspects")>
# => "the usual suspects"
puts " suspects".prepend("the usual")
puts " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<#chop>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter".slice(0)

# "Elementary,    my   dear        Watson!".<#squeeze>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze

# "z".<???>
# => 122 
puts "z".ord
# (What is the significance of the number 122 in relation to the character z?)
every letter is assigned a number in the ASCII alphabet. Z has been assigned #122

# "How many times does the letter 'a' appear in this string?".<count("a")>
# => 4
puts "How many times does the letter 'a' appear in this string?".count("a")


