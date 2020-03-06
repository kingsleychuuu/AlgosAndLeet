func reverseAlternatingWord(_ words: [String]) -> [String] {
    var newWords = words
    for (index, word) in newWords.enumerated() where index % 2 == 0 {
        newWords[index] = String(word.reversed())
    }
    return newWords
}

print(reverseAlternatingWord(["asdf","asdf","asdf","asdf"]))
