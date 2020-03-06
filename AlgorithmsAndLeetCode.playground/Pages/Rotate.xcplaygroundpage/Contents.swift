func rotate(_ matrix: inout [[Int]]) {
    var firstIndex = 0
    while firstIndex < matrix.count {
        var secondIndex = firstIndex + 1
        while secondIndex < matrix[firstIndex].count {
            let temp = matrix[firstIndex][secondIndex]
            matrix[firstIndex][secondIndex] = matrix[secondIndex][firstIndex]
            matrix[secondIndex][firstIndex] = temp
            secondIndex += 1
        }
        matrix[firstIndex].reverse()
        firstIndex += 1
    }
}
