class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
        @length = length
        @width = width
    end

    def area
        @length * @width
    end

    def perimeter
        (2 * @length) + (2 * @width)
    end

end

class Square < Rectangle
    def initialize(length)
        super(length, length)
    end

    def to_s
        "Length: #{@length}, Area: #{self.area}, Perimeter: #{self.perimeter}"
    end
end

class Cube < Square
    def initialize(length)
        super(length)
    end

    def volume
        face_area = self.area
        face_area * @length
    end

    def surface_area
        face_area = self.area
        face_area * 6
    end

    def to_s
        "Length: #{@length}, Volume: #{self.volume}, Surface Area: #{self.surface_area}"
    end
end