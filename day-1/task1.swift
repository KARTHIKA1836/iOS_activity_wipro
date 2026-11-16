import Foundation

let studentName = "Karthika K"
let rollNumber: Int = 101
var semester: Int = 6
var cgpa: Int = 8
print("Name: \(studentName),Roll: \(rollNumber),Semester: \(semester)")
semester += 1
cgpa += 1
print("Name: \(studentName),Roll: \(rollNumber),Semester: \(semester),CGPA: \(cgpa)")
//studentName = "xyz"
print("studentName type: \(type(of: studentName))")     
print("rollNumber type: \(type(of: rollNumber))")
print("semester type: \(type(of: semester))")
print("cgpa type: \(type(of: cgpa))")    

