func iirFilter(_ arr: [Double]) -> [Double] {
    var i = 0
    var result = [Double]()
    while i < arr.count {
        if i == 0 {
            let val =  0.3*arr[i] + 0.7*0
            result.append(val)
        } else {
            let val =  0.3*arr[i] + 0.7*arr[i-1]
            result.append(val)
        }
        
        i += 1
    }
    return result
}

let arr = [0.0,1.0,2.0,1.0,0.0,8.0,4.0,3.0,1.0,1.0,1.0,1.0,3.0,4.0,5.0,6.0,1.0,2.0,2.0,2.0,3.0,2.0,2.0]

print(iirFilter(arr))
