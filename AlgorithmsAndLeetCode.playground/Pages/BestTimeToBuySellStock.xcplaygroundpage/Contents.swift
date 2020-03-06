func maxProfit(_ prices: [Int]) -> Int {
    var minPointer = 0
    var potentialProfits = [Int]()
    while minPointer < prices.count {
        var maxPointer = minPointer + 1
        var maxPrice = prices[minPointer]
        while maxPointer < prices.count {
            if prices[maxPointer] > maxPrice {
                maxPrice = prices[maxPointer]
            }
            maxPointer += 1
        }
        let potentialProfit = maxPrice - prices[minPointer]
        potentialProfits.append(potentialProfit)
        minPointer += 1
    }
    return potentialProfits.max() ?? 0
    
}
