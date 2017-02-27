
# Release 0

def search_for_item_index(collection, item_to_find)
  current_index = 0
  item_index = nil

  collection.each do |item|
    if item == item_to_find
      item_index = current_index
    end

    current_index += 1
  end  

  item_index
end

# p search_array([42, 8, 4, 2], 4)

p search_for_item_index([42, 8, 4, 2], 42) 
p search_for_item_index([42, 8, 4, 2], 9) 

# Release 1
def fib(i)
  array = [0, 1]

  while array.length < i 
    array.push(array[-2] + array [-1])
  end
  array
 end 

p fib(100)

if fib(100) [-1] == 218922995834555169026
  puts "it works"
end


# Release 2
# 1. Bubble Sort
# 2. The algorithm changes the placing of each item based on the value of the items. The integers with the highest value end up on the far right side. THis happens as each algorithm item is compared to the item located next to it, and the higher value gets moved to the right. 
  # We were able to find a video that showed step-by-step what was happening in the algorithm when it was being run. Following the algorithm visually made a lot of sense.
  # youtube will be another resource where we look for explanations. We have gotten familiar with ruby docs and other recommended sites with reading material, but Youtube videos are sometimes helpful supplements to these resources because hearing someone's explanation while watching helps at a different level. 
# 
# 3. There is a mix of feeling under qualified and curious. WHen we are able to find good explanations, the curiosity kicks in and we are excited to learn about it.  
# Curiosity makes us want to learn about a topic, and helps motivate us to put in the effort to learn.
# When we feel the under qualified emotions, we get discouraged and it de-motivates us, which is not good for our ability to learn
# 
# 4. 
# 
# We have to numerically order this array so that the lowest value is on one side, and highest is on the other side of the array
#  
#
#   starting at index-0, if the value of the array item is greater than the value of the adjacent index to the right, 
#   then the numbers switch places. 
    #  Continue this process for each element of the entire array, -1 time.
 # Repeat as many times until the array elements have been sorted. 
    # 
# 
# 5.

 

def sort_array(array)
  arr = array.length 



  loop do 
    sorted = false

    (arr-1).times  do |i|
    if array[i] > array[i + 1]
    array[i], array[i + 1] = array[i + 1], array[i]
    sorted = true
    end
  end

  break if  sorted == false
  end 
  array
 end 

numbers = [9, 6, 7, 1, 2] 

p sort_array(numbers)











