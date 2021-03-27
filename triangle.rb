# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, 'Parameters must be >= 0' if a <= 0 || b <= 0 || c <= 0
  raise TriangleError, 'C too large' if c >= a + b
  raise TriangleError, 'B too large' if b >= a + c
  raise TriangleError, 'A too large' if a >= b + c

  # all sides equal
  return :equilateral if a == b && a == c # && b == c

  # exactly 2 sides are equal
  return :isosceles if a == b || a == c || b == c

  # if no sides are equal
  return :scalene if a != b && a != c && b != c

  raise TriangleError, 'Invalid input'
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
