import Foundation

enum BookStatus {
    case available
    case borrowed(by: String, dueIn: Int)
    case reserved(for: String)
    
    var label: String {
        switch self {
        case .available:
            return "Available on shelf"
        case .borrowed(let borrower, let days):
            return "Borrowed by \(borrower) (due in \(days) days)"
        case .reserved(let memberName):
            return "Reserved for \(memberName)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member {
    var name: String
    var borrowedBooks: [Book] = []
    
    init(name: String) {
        self.name = name
    }
}

let book1 = Book(title: "The Swift Programming Language")
var book2 = book1 
book2.status = .borrowed(by: "Asha", dueIn: 7)

print("Book 1: \(book1.title) -> \(book1.status.label)") 
print("Book 2: \(book2.title) -> \(book2.status.label)") 

let member1 = Member(name: "Rahul")
let member2 = member1 
member2.name = "Rahul Sharma"
member2.borrowedBooks.append(book2)

print("Member 1 name: \(member1.name) | Books: \(member1.borrowedBooks.count)") 
print("Member 2 name: \(member2.name) | Books: \(member2.borrowedBooks.count)")
