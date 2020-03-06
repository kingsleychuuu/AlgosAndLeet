func maxSubArray(_ nums: [Int]) -> Int {
    var temp = 0
    var result = Int.min
    for i in 0..<nums.count {
        temp = max(nums[i], nums[i] + temp)
        result = max(temp, result)
    }
    return result
}

print(maxSubArray([-2,1]))
