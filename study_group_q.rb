ages = [21, 34, 55, 19, 66]
highest = [0]
  
def greatest_age(arr, highest_age)
  i = 0
    
  loop do
    break if i == arr.size
      
    if (highest_age.last < arr[i])
      highest_age.pop # moved the .pop method call to above the push
      highest_age.push(arr[i])
      # highest_age.pop
    end
      
    i += 1
  end
end
  
greatest_age(ages, highest)
p highest 

# this code should output the greatest age in the ages array but its not working correctly. 
# What does it output and why? How can we update the code so that it behaves appropriately? 

