func dominantIndex(_ nums: [Int]) -> Int {
    var maximumIndex = 0
    for (index, number) in nums.enumerated() {
        if number > nums[maximumIndex] {
            maximumIndex = index
        }
    }
    for (index, number) in nums.enumerated() {
        if nums[maximumIndex]/2 < number && maximumIndex != index {
            return -1
        }
    }
    return maximumIndex
}
