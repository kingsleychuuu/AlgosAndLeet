func setZeroes(_ matrix: inout [[Int]]) {
    var whereTheZeroesAre = [[Int]]()
    for (rowIndex, row) in matrix.enumerated() {
        for (columnIndex, cell) in row.enumerated() {
            if cell == 0 {
                whereTheZeroesAre.append([rowIndex, columnIndex])
            }
        }
    }
    for coordinate in whereTheZeroesAre {
        var xCounter = 0
        var yCounter = 0
        print(coordinate)
        while xCounter < matrix.count {
            matrix[xCounter][coordinate[1]] = Int.max
            xCounter += 1
        }
        while yCounter < matrix[0].count {
            matrix[coordinate[0]][yCounter] = Int.max
            yCounter += 1
        }
    }

    for (rowIndex, row) in matrix.enumerated() {
        for (cellIndex, cell) in row.enumerated() {
            if cell == Int.max {
                matrix[rowIndex][cellIndex] = 0
            }
        }
    }
}
