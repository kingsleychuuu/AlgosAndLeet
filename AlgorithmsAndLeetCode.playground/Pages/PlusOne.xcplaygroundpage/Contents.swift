func plusOne(_ digits: [Int]) -> [Int] {
    var newDigits = digits
    var lastIndex = newDigits.endIndex-1
    newDigits[lastIndex] += 1
    for (index, digit) in newDigits.enumerated().reversed() {
        if newDigits[index] == 10 {
            newDigits[index] = 0
            if index == 0 {
                newDigits.insert(1, at: 0)
            } else {
                newDigits[index-1] += 1
            }
        }
    }
    return newDigits
}
