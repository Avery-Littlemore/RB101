# Create method that returns true if argument is palindromic.
# Case, punctuation, spaces DON'T matter

def real_palindrome?(str)
  str.downcase!
  str.delete!(' ')
  str.delete!("\"")
  str.delete!("'")
  str.delete!(",")
  str == str.reverse # LOL
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false