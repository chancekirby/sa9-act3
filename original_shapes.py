"""
Using super() for inheritance purposes with classes

Author(s): Chance Kirby
Date: 4/24/2023
Filename: ex4_1_shapes.py
Course/section: Comp 2150-001
"""

class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def area(self):
        return self.length * self.width

    def perimeter(self):
        return 2 * (self.length + self.width)


class Square(Rectangle):
    def __init__(self, length):
        super().__init__(length, length)

    def __str__(self):
        return f'Length: {self.length}, Area: {self.area()}, Perimeter: {self.perimeter()}'


class Cube(Square):
    def __init__(self, length):
        super().__init__(length)

    def volume(self):
        face_area = super().area()
        return face_area * self.length

    def surface_area(self):
        face_area = super().area()
        return face_area * 6

    def __str__(self):
        return f'Length: {self.length}, Surface Area: {self.surface_area()}, Volume: {self.volume()}'
