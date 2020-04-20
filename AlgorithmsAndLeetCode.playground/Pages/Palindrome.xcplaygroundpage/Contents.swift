import UIKit

func isPalindrome(word: String) -> Bool {
    var characterSet: Set<Character> = []
    let lowerCasedWord = word.lowercased()
    for char in lowerCasedWord {
        if characterSet.contains(char) {
            characterSet.remove(char)
        } else {
            characterSet.insert(char)
        }
    }
    return characterSet.count <= 1
}

print(isPalindrome(word: "01000"))
