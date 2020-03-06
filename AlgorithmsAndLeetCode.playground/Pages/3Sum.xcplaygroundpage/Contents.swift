func threeSum(_ nums: [Int]) -> [[Int]] {
    var itemList = [Item]()
    var solutionSet = [[Int]]()
    for (index, num) in nums.enumerated() {
        let item = Item(position: index, value: num)
        itemList.append(item)
    }
    itemList.sort(by: { $0.value < $1.value })

    var firstPointer = 0
    while firstPointer < itemList.count - 2 {
        var secondPointer = firstPointer + 1
        var thirdPointer = itemList.count - 1
        while secondPointer < thirdPointer {
            let potentialSum = itemList[firstPointer].value + itemList[secondPointer].value + itemList[thirdPointer].value
            if potentialSum == 0 {
                solutionSet.append([itemList[firstPointer].value, itemList[secondPointer].value, itemList[thirdPointer].value])
                break
            } else if potentialSum < 0 {
                secondPointer += 1
            } else if potentialSum > 0 {
                thirdPointer -= 1
            }
        }
        firstPointer += 1
    }
    return solutionSet
}

struct Item {
    var position: Int
    var value: Int
}

print(threeSum([0,0,0,0,0]))
