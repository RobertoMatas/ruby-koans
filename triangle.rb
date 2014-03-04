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
	checkValidLengths a, b, c
	if a == b and b == c
		return :equilateral
	elsif a == b or a == c or b == c
		return :isosceles
	else
		return :scalene
	end
	
	# Todo eso se puede cambiar por:
	# [:equilateral, :isosceles, :scalene][[a, b, c].uniq.size - 1]
end

def checkValidLengths(a, b, c)
	ab = a + b
	ac = a + c
	bc = b + c
	condition1 = a <= 0 or b <= 0 or c <= 0
	condition2 = (ab <= c or ac <= b or bc <=a)
	raise TriangleError if condition1 or condition2
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
