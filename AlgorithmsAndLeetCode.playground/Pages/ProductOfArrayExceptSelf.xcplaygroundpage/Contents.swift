func productExceptSelf(_ nums: [Int]) -> [Int] {
    var leftArray = nums
    leftArray[0] = 1
    var leftIndex = 1
    while leftIndex < nums.count {
        leftArray[leftIndex] = nums[leftIndex-1] * leftArray[leftIndex-1]
        leftIndex += 1
    }

    var rightArray = nums
    rightArray[nums.count - 1] = 1
    var rightIndex = nums.count - 2
    while rightIndex >= 0 {
        rightArray[rightIndex] = nums[rightIndex + 1] * rightArray[rightIndex + 1]
        rightIndex -= 1
    }

    var outputArray = nums
    for (index, _) in nums.enumerated() {
        outputArray[index] = leftArray[index] * rightArray[index]
    }
    return outputArray
    
}
