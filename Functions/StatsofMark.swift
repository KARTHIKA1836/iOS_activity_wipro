func stats(of marks: [Int]) -> (min: Int, max: Int, average: Double)? {
    if marks.isEmpty {
        return nil
    }
    var lowest = marks[0]
    var highest = marks[0]
    var sum = 0
    for mark in marks {
        if mark < lowest {
            lowest = mark
        }
        if mark > highest {
            highest = mark
        }
        sum += mark
    }
    let avg = Double(sum) / Double(marks.count)
    return (lowest, highest, avg)
}
let marks = [90, 80, 40]
if let result = stats(of: marks) {
    print("Min: \(result.min)")         
    print("Max: \(result.max)")         
    print("Average: \(result.average)") 
}