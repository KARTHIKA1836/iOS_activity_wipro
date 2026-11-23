struct Address {
    let city: String?
}

struct User {
    let name: String
    let age: Int?
    let address: Address?
}

func describe(_ user: User) -> String {
    guard let age = user.age else {
        return "\(user.name)'s age is unknown."
    }
    
    let city = user.address?.city ?? "unknown city"
    return "\(user.name) is \(age) years old and lives in \(city)."
}


let user1 = User(name: "Karthika", age: 21, address: Address(city: "Coimbatore"))
let user2 = User(name: "Santhiya", age: nil, address: Address(city: "Chennai"))
let user3 = User(name: "Nandhini", age: 23, address: Address(city: nil))

print(describe(user1)) 
print(describe(user2))    
print(describe(user3))   

let validNumber = Int("42")
let invalidNumber = Int("abc")

print("Int(\"42\")  -> \(String(describing: validNumber))")  
print("Int(\"abc\") -> \(String(describing: invalidNumber))") 
