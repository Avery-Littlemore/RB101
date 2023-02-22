# Create method with one parameter. Square and return

def multiply(first, second)
  first * second
end

def square(num)
  multiply(num, num)
end

puts square(-8) == 64
puts square(5) == 25