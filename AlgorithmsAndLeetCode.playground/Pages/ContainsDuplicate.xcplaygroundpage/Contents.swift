func containsDuplicate(_ nums: [Int]) -> Bool {
    let sortedNums = nums.sorted()
    var pointer = 0
    while pointer < sortedNums.count - 1 {
        if sortedNums[pointer] == sortedNums[pointer+1] {
            return true
        }
        pointer += 1
    }
    return false
}
