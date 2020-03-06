func pivotIndex(_ nums: [Int]) -> Int {
    var total = nums.reduce(0,+)
    var leftSum = 0
    for (index, num) in nums.enumerated() {
        if leftSum == total - leftSum - num {
            return index
        }
        leftSum += num
    }
    return -1
}
