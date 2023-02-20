# Ask user for width and length of room in meters
# Display the area of the room in square meters AND in square feet

puts 'How many meters wide is the room?'
width = gets.chomp.to_f

puts 'How many meters long is the room?'
length = gets.chomp.to_f

puts "The area of the room is #{(width * length).round(2)} meters squared, or #{(width * 3.28084 * length * 3.28084).round(2)} feet squared."