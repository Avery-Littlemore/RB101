def print_in_box(str)
  puts <<-MSG
  +-#{'-' * str.length}-+
  | #{' ' * str.length} |
  | #{str} |
  | #{' ' * str.length} |
  +-#{'-' * str.length}-+
  MSG
end


print_in_box('')
print_in_box('Hey Brother!')
print_in_box("It's me, Avery!")
print_in_box("I'm the best coder in the entire world!!!")