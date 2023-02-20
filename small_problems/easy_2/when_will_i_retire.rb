# Get the user's current age and retirement age
# Calculate how many years til retirement, and the retirement year

puts 'How old are you?'
curr_age = gets.chomp.to_i

puts 'And at what age do you wish to retire?'
retirement_age = gets.chomp.to_i

curr_year = Time.now.year
years_til_retire = retirement_age - curr_age
retirement_year = curr_year + years_til_retire

puts "It's currently #{curr_year}. You have #{years_til_retire} years until you retire in #{retirement_year}!"