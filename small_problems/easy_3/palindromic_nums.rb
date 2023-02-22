# Create a method that returns true if argument num is palindromic

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true