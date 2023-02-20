# Ask for user's name
# Greet the user by name
# If user writes their name with a ! at the end, respond in all caps

puts 'What is your name?'
name = gets.chomp

if name.include?('!')
  name.delete!('!')
  #name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE YELLING?"
else
  puts "Hello #{name}."
end