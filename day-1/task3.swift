import Foundation

let price = 250
var quantity: Int = 3 
let taxRate = 0.18 
price = 300 
let total = price * quantity * taxRate 
var title = "Order" 
title = 42 
print(total) 

//  Line 3 (price = 300) — Missing Declaration Keyword: Unlike Python or JavaScript, Swift requires every new variable to be explicitly introduced with var or let before assignment. Without it, the compiler throws "Cannot find 'price' in scope".
//  Line 4 (let total = price * quantity * taxRate) — Strict Type Mismatch: price and quantity are inferred as Int, while taxRate is inferred as Double. Unlike Java or C, Swift forbids implicit widening, so multiplying an Int by a Double fails unless you explicitly convert the integers using Double().
//  Line 6 (title = 42) — Static Type Violation: On Line 5, Swift inferred title as a String. Because Swift is statically typed, you cannot reassign an Int (42) to a String variable later.