func average(of marks: Int...) -> Double {
    if marks.isEmpty{
        return 0
    }
    var sum: Int = 0
    for i in marks{
        sum += i
    } 
    return Double(sum)/Double(marks.count)
}

print(average(of: 80, 45, 90, 75, 100))
print(average())

func grade(for average: Double) -> String {
    if(average >= 90) {
        return "O"
    }else if( average >= 80 && average <= 89) {
        return "A+"
    }else if( average >= 70 && average <= 79) {
        return "A"
    }else if( average >= 60 && average <= 69) {
        return "B"
    }else {
        return "RA"
    }
}

print(grade(for: average(of: 80, 90, 100)))
print(grade(for: average()))