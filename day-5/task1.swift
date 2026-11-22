import Foundation

struct Address{
    var city: String?
}
struct User{
    var name: String
    var age: Int?
    var address: Address?
}
func describe(_ user: User) -> String{
        guard let age = user.age else{
            return "Age is unknown"
        }
        return "User age \(user.age)"
    }

var user1 = User(name: "Karthika", age: 21 ,address: Address(city: "Coimbatore"))
print(user1)