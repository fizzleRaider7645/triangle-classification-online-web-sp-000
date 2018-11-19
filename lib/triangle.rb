require 'pry'

class Triangle
  attr_accessor :triangle 
  
  def initialize(side1, side2, side3)
    @triangle = [side1, side2, side3]
  end
  
  def kind
<<<<<<< HEAD
    raise TriangleError if illegal
    return :equilateral if equilateral
    return :isosceles if isosceles
    return :scalene if scalene
  end
  
  
  
=======
    return :equilateral if equilateral
  end
  
>>>>>>> a80b771e11583a0e5f4c10cbd00b263352d462f7
  class TriangleError < StandardError
  end
  
  private
  
  def equilateral
<<<<<<< HEAD
    @triangle.uniq.length == 1 && @triangle.uniq.first > 0
  end
  
  def isosceles
    @triangle.uniq.length == 2
  end
  
  def scalene
    @triangle.uniq.length == 3 && @triangle.none? { |side| side < 0 }
  end
  
  def triangle_inequality?
    temp = @triangle.dup
    3.times do
      temp.rotate!
      if temp.take(2).inject(:+) <= temp.last
        return true
      end
    end
    false
  end
  
  def illegal
    return true if @triangle.any? { |side| side <= 0 }
    return true if triangle_inequality?
=======
    @triangle.uniq.length == 1
>>>>>>> a80b771e11583a0e5f4c10cbd00b263352d462f7
  end
end
