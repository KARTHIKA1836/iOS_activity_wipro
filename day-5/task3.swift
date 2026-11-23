// let scores = ["Asha": 90, "Ravi": 72] 
// let kiran = scores["Kiran"]! 
// let number = Int("12a")! 
// print(kiran + number) 


let scores = ["Asha": 90, "Ravi": 72]

if let kiran = scores["Kiran"] {
    if let number = Int("12a") {
        print("Total: \(kiran + number)")
    } else {
        print("Error: '12a' is not a valid whole number.")
    }
} else {
    print("Error: Student 'Kiran' was not found in the scores dictionary.")
}
