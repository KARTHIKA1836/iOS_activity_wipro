func curve(_marks: inout [Int], by bonus: Int = 5) {
     for index in 0..<marks.count {
        let updatedMark = marks[index] + bonus
        if updatedMark > 100 {
            marks[index] = 100
        } else {
            marks[index] = updatedMark
        }
    }
}
var studentMarks = [80, 90, 75]
curve(&studentMarks)
print("After default +5 curve: \(studentMarks)")
curve(&studentMarks, by: 10)
print("After custom +10 curve: \(studentMarks)") 