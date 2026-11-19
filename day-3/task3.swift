let swiftClub: Set<String> = ["Anu", "Ben", "Chitra", "Dev"]
let uiClub: Set<String> = ["Chitra", "Dev", "Esha"]

// (a) Members in both clubs (Intersection)
let bothClubs = swiftClub.intersection(uiClub)
print("(a) Both clubs: \(bothClubs.sorted())")

// (b) Members only in the Swift club (Subtracting)
let onlySwift = swiftClub.subtracting(uiClub)
print("(b) Only Swift club: \(onlySwift.sorted())")

// (c) Everyone in either or both clubs (Union)
let everyone = swiftClub.union(uiClub)
print("(c) Everyone: \(everyone.sorted())")

// (d) Members in exactly one club (Symmetric Difference)
let exactlyOneClub = swiftClub.symmetricDifference(uiClub)
print("(d) Exactly one club: \(exactlyOneClub.sorted())")


// Part 2: Remove duplicates from [3, 1, 3, 2, 1, 4] while keeping original order
let numbers = [3, 1, 3, 2, 1, 4]
var seen: Set<Int> = []
var uniqueOrdered: [Int] = []

for num in numbers {
    // insert(_:) returns (inserted: true, ...) only the first time a number is seen
    if seen.insert(num).inserted {
        uniqueOrdered.append(num)
    }
}

print("Unique in original order: \(uniqueOrdered)")
