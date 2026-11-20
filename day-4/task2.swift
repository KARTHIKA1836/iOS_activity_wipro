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