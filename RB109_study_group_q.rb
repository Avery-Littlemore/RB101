require "pry"

arr = [3, 5]
  
for el in arr
  sum = 0
  # binding.pry
  el.times do |param|
    sum += param
    # binding.pry
		# sum = 0 + 0 = 0
		# sum = 0 + 1 = 1
		# sum = 1 + 2 = 3

    # sum = 0 + 0 = 0
    # sum = 0 + 1 = 1
    # sum = 1 + 2 = 3
    # sum = 3 + 3 = 6
    # sum = 6 + 4 = 10
  end
end

p el # therefore, el is initialized as a local variable in the for loop

p sum