# Write a method that reverses the digits in a number
# Parameter will be the number to reverse digits
# Edge case, what if only one number? What if no numbers? What if even or odd number of nums? What if number has leading or trailing zeros 
# See if there is a .reverse 

def reversed_number(num)
  num_as_str = num.to_s
  num_as_str.reverse!
  num_as_str.to_i
end


puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1