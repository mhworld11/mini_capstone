#Write a function that accepts a string and returns the number of times that the letter “a” occurs in it.

# def a_finder(string)
#   index = 0
#   counter = 0
#   string.length.times do 
#     if string[index] == "a"
#       counter +=1
#     end
#     index+=1
#   end
#   return counter
# end

# p a_finder("Bananas")


#Write a method that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number to search for within in the array. The method should do a linear search and return the index at which this value is found, or it should return nil if the value is not found. See if there’s a way in which you can optimize this method to keep its number of steps to a minimum! Note: Do not use the “index” method!

def find_index(array, integer)
  i = 0
  array.length.times do
    if array[i] == integer
      puts i 
    elsif  i <= array.length - 1
    i+=1 
    else
      puts "nil"#i == array.length - 1 && i != integer
    #    puts "nil"
    end
  
  end

end

 find_index([5,4,2,1,9,8], 7)



