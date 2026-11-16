import Foundation

var c: Double = 25.00
let divi: Double = 9.0 / 5.0
let fahrenheitoffset = 32.0
let kelvinoffset: Double = 273.15
var fahrenheit = c * divi + fahrenheitoffset
var kelvin = c + kelvinoffset
print("Fahrenheit : \(fahrenheit)")
print("Kelvin : \(kelvin)")
c = 32
print("Fahrenheit : \(fahrenheit)")
print("Kelvin : \(kelvin)")
print("Celsius: \(String(format: "%.1f", c))°C | Fahrenheit: \(String(format: "%.1f", fahrenheit))°F | Kelvin: \(String(format: "%.1f", kelvin))K")



