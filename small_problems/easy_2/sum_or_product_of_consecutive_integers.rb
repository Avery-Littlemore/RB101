# Request an integer > 0
# Ask user if they want sum or product
# print all sums or products between 1 and entered integer

puts 'Please enter a number greater than zero:' 
max = gets.chomp.to_i

i = 1
loop do
  puts "Put 's' to compute the sum, or 'p' to compute the product:"
  operation = gets.chomp.downcase

  
  if operation == 's'
    sum = 0
    
    # while i <= max
    #   sum += i
    #   i += 1
    # end
    puts "The sum of the integers between 1 and #{max} is #{(1..max).inject(:+)}."
    break
  elsif operation == 'p'
    product = 1
    # while i <= max
    #   product *= i
    #   i += 1
    # end
    puts "The product of the integers between 1 and #{max} is #{(1..max).inject(:*)}."
    break
  else
    puts "That was neither 's' nor 'p'. Please try again."
  end
end