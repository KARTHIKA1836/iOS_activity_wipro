import Foundation

var itemPrice: Double = 450.0
var quantiy: Double = 3
var subtotal: Double = itemPrice * quantiy
var hasCoupon: Bool = true
var discount: Double = (hasCoupon && subtotal >= 1000) ? (subtotal * 0.10) : 0.0
print("Discount : \(discount)")
print(subtotal + discount)
var gst: Double = (subtotal + discount) * 0.18
print("GST : \(gst)")
var total = subtotal + discount + gst
print("Total : \(total)")
var split: Double = total / 4.0
print("For each person's split \(split)")
let totalRupees = 1234
let thousands = totalRupees / 1000
let hundreds = totalRupees / 100
let remainder = totalRupees % 100
print("₹\(totalRupees) equals \(hundreds) hundreds and ₹\(remainder) remainder.")