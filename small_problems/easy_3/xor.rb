# Create an XOR method that returns a boolean true/false

def xor?(bool1, bool2)
  if same?(bool1, bool2)
    false
  else
    true
  end
end

def same?(a,b)
  a == b
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false