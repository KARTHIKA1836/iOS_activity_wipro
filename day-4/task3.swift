struct Counter { 
var value = 0 
mutating func increment() { value += 1 } 
} 
class Box { 
var value = 0 
func increment() { value += 1 } 
} 
let c = Counter() 
c.increment() 
let b = Box() 
b.increment() 

// The above code shows this error
/* main.swift:10:3: error: cannot use mutating member on immutable value: 'c' is a 'let' constant
 7 | func increment() { value += 1 } 
 8 | } 
 9 | let c = Counter() 
   | `- note: change 'let' to 'var' to make it mutable
10 | c.increment() 
   |   `- error: cannot use mutating member on immutable value: 'c' is a 'let' constant
11 | let b = Box() 
12 | b.increment() */

// After fixing this code 


struct Counter {
    var value = 0
    mutating func increment() { value += 1 }
}

class Box {
    var value = 0
    func increment() { value += 1 }
}

// Fix: Change 'let' to 'var' so the struct instance can be mutated
var c = Counter()
c.increment()
print("Counter value: \(c.value)") // 1

// Class constant locks the reference, not the internal properties
let b = Box()
b.increment()
print("Box value: \(b.value)")     // 1

// Verify reference identity using ===
let b2 = b
if b === b2 {
    print("b and b2 refer to the exact same Box instance in memory!")
}
