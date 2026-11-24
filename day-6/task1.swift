class Person {
    let name: String
    var apartment: Apartment?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
class Apartment {
    let unit: String
    weak var tenant: Person? 
    init(unit: String) {
        self.unit = unit
    }
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}
var asha: Person? = Person(name: "Asha")
var unit4A: Apartment? = Apartment(unit: "4A")
asha?.apartment = unit4A
unit4A?.tenant = asha
asha = nil   
unit4A = nil 