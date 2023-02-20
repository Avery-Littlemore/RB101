# Set up a method that takes an integer as argument and prints to screen a right triangle, 
# where the right side is vertical and the left side is the hypotenuse
# 
# Since the RHS of the triangle needs to be vertical, we'll need to set up spaces for the previous lines
# the final line will have max characters
# Iterator should take n = side_length - 1, and insert n spaces before the first star. 
# Also need to increase the number of stars with each line. Use the n iterator for this as well.
# After each line is printed, n -= 1.
# When n == 0, break

def triangle(side_length)
  n = side_length - 1
  until n == -1
    puts (' ' * (n)) + ('*' * (side_length - n))
    n -=1
  end
end

triangle(5)
triangle(9)