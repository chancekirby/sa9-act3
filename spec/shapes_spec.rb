require "shapes"

RSpec.describe Rectangle do
    let(:rectangle) { Rectangle.new(3, 4) }

    describe ".initialize" do
        it "correctly assigns the length of the rectangle" do
            expect(rectangle.length).to eq(3)
        end

        it "correctly assigns the width of the rectangle" do
            expect(rectangle.width).to eq(4)
        end
    end
    describe ".area" do
        it "correctly gets the area of the rectangle" do
            expect(rectangle.area).to eq(12)
        end
    end

    describe ".perimeter" do
        it "correctly gets the perimeter of the rectangle" do
            expect(rectangle.perimeter).to eq(14)
        end
    end
end

RSpec.describe Square do
    let(:square) { Square.new(10) }

    describe ".initialize" do
        it "correctly assigns the length of the square" do
            expect(square.length).to eq(10)
        end

        it "correctly assigns the width of the square" do
            expect(square.width).to eq(10)
        end
    end
    

    describe ".to_str" do
        it "correclty prints the string representation of the square object" do
            expect(square.to_s).to eq("Length: 10, Area: 100, Perimeter: 40")
        end
    end
    
end

RSpec.describe Cube do
    let(:cube) { Cube.new(5) }

    describe ".initialize" do
        it "correctly assigns the length of the cube" do
            expect(cube.length).to eq(5)
        end
    end

    describe ".volume" do
        it "correctly finds the volume of the cube" do
            expect(cube.volume).to eq(125)
        end
    end

    describe ".surface_area" do
        it "correctly finds the volume of the cube" do
            expect(cube.surface_area).to eq(150)
        end
    end

    describe ".to_str" do
        it "correclty prints the string representation of the cube object" do
            expect(cube.to_s).to eq("Length: 5, Volume: 125, Surface Area: 150")
        end
    end
end
