import UIKit

func twoSum(nums: [Int], target: Int) -> [Int] {
    var itemList = [Item]()
    for (index, num) in nums.enumerated() {
        let item = Item(position: index, value: num)
        itemList.append(item)
    }
    
    itemList.sort(by: { $0.value < $1.value })
    var firstPointer = 0
    var secondPointer = itemList.count - 1
    
    while firstPointer < secondPointer {
        let potentialSum = itemList[firstPointer].value + itemList[secondPointer].value
        if potentialSum == target {
            return [itemList[firstPointer].position, itemList[secondPointer].position]
        } else if potentialSum > target {
            firstPointer += 1
        } else if potentialSum < target {
            secondPointer -= 1
        }
    }
    return [-1]
}

struct Item {
    var position: Int
    var value: Int
}

print(twoSum(nums: [1,2,3,4,5], target: 6))
