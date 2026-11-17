import Foundation


/* Is a year a leap year? (divisible by 4, except centuries, unless divisible by 400.) Test 1900, 2000, 2024 
and 2026. */


func checkLeap(year: Int) {
  let isLeapYear: Bool = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
if isLeapYear {
  print("\(year) is Leap year")
} else {
  print("\(year) is not a leap year")
}
}

checkLeap(year: 1900)
checkLeap(year: 2000)
checkLeap(year: 2024)
checkLeap(year: 2026)





// 1...100 creates a range from 1 to 100 (including both 1 and 100)


let a = 42
if (1...100).contains(a) {
    print("\(a) is between 1 and 100!")
} else {
    print("\(a) is NOT between 1 and 100.")
}


//Is a number even and not a multiple of 10? 


let number = 24

// 1. Check if even (remainder is 0 when divided by 2)
// 2. Check if NOT a multiple of 10 (remainder is NOT 0 when divided by 10)
if number % 2 == 0 && number % 10 != 0 {
    print("\(number) is even and not a multiple of 10!")
} else {
    print("\(number) does not meet both conditions.")
}



// A user setting nickname of type String? is nil. Print the nickname or “Guest” using one operator. 

let userName: String? = nil
print(userName ?? "Guest")
print("Welcome, \(userName ?? "Guest")")
