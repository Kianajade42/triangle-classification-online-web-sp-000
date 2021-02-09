class Triangle
  attr_reader :sideA, :sideB, :sideC
    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end

    def kind
      equal
      if sideA == sideB && sideB == sideC
        :equilateral
      elsif sideA == sideB || sideB == sideC || sideA == sideC
        :isosceles
      else
        :scalene
      end
    end

    def equal
      real_triangle = [(sideA + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
        real_triangle << false if side <= 0
      raise TriangleError if equal.include?(false)
      end
    end


class TriangleError<StandardError

end
end
