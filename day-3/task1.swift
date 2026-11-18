import Foundation

//1
var subject = ["Swift","UIKit","SwiftUI"]
print(subject)
subject.append("Networking")
print(subject)
subject.insert("Testing", at:1)
print(subject)
subject.remove(at:2)
print(subject)
print(subject.sort())

//2
var registered: Set = ["Karthika","Santhiya","Nandhini","Poorva","Karthika"]
print(registered.count)
print(registered)

//3
var marks = ["Karthika":90,"Santhiya":95,"Nandhini":100,"Poorva":92]
print(marks)
marks["Krish"] = 99
print(marks)
marks["Santhiya"] = 100
print(marks)
print("xyz's mark : \(marks["ndud"])")

//4
for i in marks.keys.sorted(){
  print("Name : \(i), Marks : \(marks[i])")
}

//5
var topStudent = ""
var highestMark = -1
for (name, score) in marks {
    if score > highestMark {
        highestMark = score
        topStudent = name
    }
}
print("\nTop Scorer: \(topStudent) with \(highestMark) marks")



