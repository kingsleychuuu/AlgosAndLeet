import UIKit

func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    let lowIndex = 0
    let middleIndex = array.count/2
    let highIndex = array.count
    
    let leftArray = Array(array[lowIndex..<middleIndex])
    let rightArray = Array(array[middleIndex..<highIndex])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    var left = left
    var right = right
    var mergedArray = [Int]()
    while left.count > 0 && right.count > 0 {
        if left[0] > right[0] {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    return mergedArray + left + right
}
