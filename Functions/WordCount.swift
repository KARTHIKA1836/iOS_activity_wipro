func wordCount(in text: String) -> Int {
    let words = text.split(separator: " ")
    return words.count
}
let sample = "A man, a plan, a canal: Panama"
print("Word Count: \(wordCount(in: sample))") 