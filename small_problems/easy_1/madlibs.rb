# Request strings from user to complete a madlib.
# noun, verb, adjective, adverb
# print out the story with user's inputs

puts 'Enter a noun: '
noun = gets.chomp

puts 'Enter a verb: '
verb = gets.chomp

puts 'Enter an adjective: '
adj = gets.chomp

puts 'Enter an adverb: '
adv = gets.chomp

puts "The #{adj} #{noun} is going to #{verb} #{adv}. That's hilarious!"