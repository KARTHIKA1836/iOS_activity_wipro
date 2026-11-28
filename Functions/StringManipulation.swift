func isPalindrome(_ text: String) -> Bool {
    var cleaned = ""
    for char in text.lowercased() {
        if char.isLetter || char.isNumber {
            cleaned.append(char)
        }
    }
    
    return cleaned == String(cleaned.reversed())
}

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

func wordCount(in text: String) -> Int {
    let words = text.split(separator: " ")
    return words.count
}

func wordCount(in text: String, minLength: Int) -> Int {
    let words = text.split(separator: " ")
    var count = 0
    
    for word in words {
        var letterCount = 0
        for char in word {
            if char.isLetter {
                letterCount += 1
            }
        }
        
        if letterCount >= minLength {
            count += 1
        }
    }
    
    return count
}

let sample = "A man, a plan, a canal: Panama"

print("Is Palindrome: \(isPalindrome(sample))")                       
print("Vowel Count: \(vowelCount(in: sample))")                       
print("Word Count: \(wordCount(in: sample))")                         
print("Words >= 4 letters: \(wordCount(in: sample, minLength: 4))")   
