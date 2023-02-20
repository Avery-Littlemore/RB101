# Write a method that takes a non-zero-character string and returns the middle character(s)
# If the argument has an odd num of chars, return one char
# If the arg has an even num of chars, return the middle two chars

# Count the num of chars and use a conditional if statement to determine which char(s) to grab

def center_of(str)
  if str.length % 2 == 0
    str[str.length / 2 - 1] + str[str.length / 2]
  else
    str[str.length / 2]
  end
end


puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('x') == 'x'
puts center_of('Launchschool') == 'hs'