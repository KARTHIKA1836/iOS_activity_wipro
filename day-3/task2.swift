import Foundation

let sentence = "swift is fun and swift is fast"
let words = sentence.split(separator: " ").map { String($0) }
print("(a) Total words: \(words.count)")
let uniqueWords = Set(words)
print("(b) Unique words: \(uniqueWords.sorted())")
var wordCounts: [String: Int] = [:]
for word in words {
    wordCounts[word, default: 0] += 1
}
print("(c) Word frequencies: \(wordCounts)")
let rankedWords = wordCounts.sorted { first, second in
    if first.value == second.value {
        return first.key < second.key  
    }
    return first.value > second.value
}

print("(d) Ranked words:")
for (word, count) in rankedWords {
    print("    \(word): \(count)")
}
