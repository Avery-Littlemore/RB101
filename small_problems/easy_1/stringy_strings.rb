def stringy(pos_int, opposite = 1)
  str = ''
  if opposite == 1
    while str.length < pos_int
      if str.length % 2 == 0
        str << '1'
      else
        str << '0'
      end
    end
  else
    while str.length < pos_int
      if str.length % 2 == 1
        str << '1'
      else
        str << '0'
      end
    end
  end

  str
end

# return string of 1s and 0s, starting with 1
# length of string will be equal to positive number argument

puts stringy(6, 0) # == '101010' # true
puts stringy(9) == '101010101' # true
puts stringy(4) == '1010' # true
puts stringy(7) == '1010101' # true