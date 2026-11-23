let formInputs = ["10", "x", "25", "", "7.5", "40"]

let validIntegers = formInputs.compactMap { Int($0) }
print("(a) Valid integers: \(validIntegers)") // [10, 25, 40]

let totalSum = validIntegers.reduce(0, +)
print("(b) Sum of valid integers: \(totalSum)") // 75

let invalidCount = formInputs.count - validIntegers.count
print("(c) Invalid entries count: \(invalidCount)") // 3 
let firstDoubled = validIntegers.first.map { $0 * 2 }
print("(d) First valid number doubled: \(firstDoubled ?? 0)") // 20
