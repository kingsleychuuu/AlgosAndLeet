import UIKit

func getMostCommonElement(array: [String]) -> [String]{
    var topElements = [String]()
    var dictionary = [String: Int]()
    
    for item in array {
        if let count = dictionary[item] {
            dictionary[item] = count + 1
        } else {
            dictionary[item] = 1
        }
    }
    
    let highestValue = dictionary.values.max()
    
    for (item, _) in dictionary where dictionary[item] == highestValue {
        topElements.append(item)
    }
    
    return topElements
}
