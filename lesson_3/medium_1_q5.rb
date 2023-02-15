LIMIT = 15
# Or if limit will be a variable, not a constant, set it up so that the limit is a third parameter in fib method

def fib(first_num, second_num)
  while first_num + second_num < LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

