def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".") # turns it to a array of sub-strings
  return false unless dot_separated_words.size == 4
  while dot_separated_words.size > 0
    word = dot_separated_words.pop # pops the final string in array
    return false unless is_an_ip_number?(word)
  end
  return true
end
