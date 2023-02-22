# request 6 numbers from the user
# print back to the screen a confirmation of whether the final number appears in the first 5 numbers provided

puts '==> Enter the 1st number:'
first = gets.chomp.to_i

puts '==> Enter the 2nd number:'
second = gets.chomp.to_i

puts '==> Enter the 3rd number:'
third = gets.chomp.to_i

puts '==> Enter the 4th number:'
fourth = gets.chomp.to_i

puts '==> Enter the 5th number:'
fifth = gets.chomp.to_i

puts '==> Enter the 6th number:'
sixth = gets.chomp.to_i

arr = [first, second, third, fourth, fifth]

if arr.include? (sixth)
  puts "The number #{sixth} appears in #{arr}."
else
  puts "The number #{sixth} does not appear in #{arr}."
end