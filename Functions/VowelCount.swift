func vowelCount(in text: String) -> Int {
    let vowels = "aeiou"
    var count = 0
    
    for char in text.lowercased() {
        if vowels.contains(char) {
            count += 1
        }
    }
    
    return count
}
let sample = "A man, a plan, a canal: Panama"
print("Vowel Count: \(vowelCount(in: sample))")