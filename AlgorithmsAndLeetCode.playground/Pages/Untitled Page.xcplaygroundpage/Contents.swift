func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    var grid = grid
    var result = 0
    for (x, row) in grid.enumerated() {
        for (y, item) in row.enumerated() {
            if item == 1 {
                result = max(result, dfs(&grid,x,y))
            }
        }
    }
    return result
}
func dfs(_ grid: inout [[Int]], _ x: Int, _ y: Int) -> Int {
    if x<0 || x>=grid.count || y<0 || y>=grid.count || grid[x][y] == 0 {
        return 0
    } else {
        grid[x][y] = 0
        var count = 1
        count += dfs(&grid,x-1,y)
        count += dfs(&grid,x+1,y)
        count += dfs(&grid,x,y-1)
        count += dfs(&grid,x,y+1)
        return count
    }
}

print(maxAreaOfIsland([[0,1]]))
