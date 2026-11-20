import Foundation

enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)
    
    var area: Double {
        switch self {
        case let .circle(radius):
            return Double.pi * radius * radius
        case let .rectangle(width, height):
            return width * height
        case let .triangle(base, height):
            return 0.5 * base * height
        }
    }
}

let circle = Shape.circle(radius: 5.0)
let rectShape = Shape.rectangle(width: 4.0, height: 6.0)
let triangle = Shape.triangle(base: 10.0, height: 4.0)

print("Circle Area: \(String(format: "%.2f", circle.area))")       
print("Rectangle Area: \(rectShape.area)")                        
print("Triangle Area: \(triangle.area)")                          

struct Rectangle {
    var width: Double
    var height: Double
    var perimeter: Double {
        return 2 * (width + height)
    }
    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

let originalRect = Rectangle(width: 10.0, height: 5.0)
var scaledCopy = originalRect 

scaledCopy.scale(by: 2.0)

print("Original Rectangle: \(originalRect.width) x \(originalRect.height) | Perimeter: \(originalRect.perimeter)")
print("Scaled Copy:        \(scaledCopy.width) x \(scaledCopy.height) | Perimeter: \(scaledCopy.perimeter)")
