# Method with one parameter, param is a num
# If argument is a pos number, return neg
# If arg is 0 or neg number, return same num

def negative(num)
  if num > 0
    num * -1
  else
    num
  end
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby