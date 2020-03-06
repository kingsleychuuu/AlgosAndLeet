
func fizzBuzz(_ nums: [Int]) {
    for num in nums {
        if num % 3 == 0 && num % 5 == 0 {
            print("fizzBuzz")
        } else if num % 3 == 0 {
            print("fizz")
        } else if num % 5 == 0 {
            print("buzz")
        } else {
            print(num)
        }
    }
}

fizzBuzz([1,2,3,4,5,6,7,8,9,10])
