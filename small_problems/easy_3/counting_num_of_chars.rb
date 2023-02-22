# Request word or multiple words
# Output num of chars NOT including spaces

puts 'Please write word or multiple words: '
answer = gets.chomp

if answer.include? (' ')
  puts "There are #{answer.gsub(' ', '').size} chars in \"#{answer}\"."
else 
  puts "There are #{answer.size} chars in \"#{answer}\"."
end