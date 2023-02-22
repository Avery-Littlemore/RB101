# Create method that returns true if argument is palindromic.
# Case, punctuation, spaces all matter

def palindrome?(str)
  i = 0
  loop do
    return false if str[i] != str[str.length - 1 - i]
    i += 1
    break if i == str.length
  end
  return true

  # str == str.reverse # LOL
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true