class Triangle
  attr_reader :sideA, :sideB, :sideC
    def initialize(sideA, sideB, sideC)
      @sideA = sideA
      @sideB = sideB
      @sideC = sideC
    end

    def kind

      if sideA == sideB && sideB == sideC
        :equilateral
      elsif sideA == sideB || sideB == sideC || sideA == sideC
        :isosceles
      else
        :scalene
      end
    end

    def equal
      real_triangle = [(sideA + sideB > sideC), (sideA + sideC > sideB), (sideB + sideC > sideA)]
      [sideA, sideB, sideC].each do |side|
        real_triangle << false if side <= 0
      raise TriangleError if kind.include?(false)
      end
    end


class TriangleError<StandardError

end
end
