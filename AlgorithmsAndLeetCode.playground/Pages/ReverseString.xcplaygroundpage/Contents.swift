func reverseString(_ s: inout [Character]) {
    var firstIndex = 0
    var char:Character
    var lastIndex = s.endIndex - 1
    while firstIndex < lastIndex {
        char = s[firstIndex]
        s[firstIndex] = s[lastIndex]
        s[lastIndex] = char
        firstIndex += 1
        lastIndex -= 1
    }
}
