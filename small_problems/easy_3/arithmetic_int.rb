# Prompt user for two positive ints
# print results of add/sub/mult/div/remainder/power

puts '==> Enter the 1st number:'
first = gets.chomp.to_i

puts '==> Enter the 2nd number:'
second = gets.chomp.to_i

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"