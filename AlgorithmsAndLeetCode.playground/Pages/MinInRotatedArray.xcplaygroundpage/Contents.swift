func findMin(_ nums: [Int]) -> Int {
    var pointer = 1
    while pointer <= nums.count - 1 {
        if nums[pointer-1] > nums[pointer] {
            return nums[pointer]
        }
        pointer += 1
    }
    return nums[0]
}
