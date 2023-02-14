require "pry" 
words = %w(scooby doo on channel two)
words.each do |str|
  binding.pry
  words.delete(str)
end
puts words.inspect        # => ["doo", "channel"]

