func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var counter = 0
    for num in nums {
        if num != val {
            nums[counter] = num
            counter += 1
        }
    }
    return counter
}
