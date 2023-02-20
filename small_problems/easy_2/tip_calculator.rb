# Prompt the user to enter the total bill amount and standard tip rate
# Output the tip amount and the totalized bill amount with tip included

puts 'What is the total bill amount before tip?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
percent = gets.chomp.to_f / 100

tip = (bill * percent).round(2)
total = (tip + bill).round(2)

puts "The tip is $#{tip}"
puts "The total with tip is $#{total}"
