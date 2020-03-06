func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var globalMax = 0
    var localMax = 0
    for num in nums {
        if num == 1 {
            localMax += 1
            globalMax = max(globalMax, localMax)
        } else {
            localMax = 0
        }
    }
    return globalMax
}
