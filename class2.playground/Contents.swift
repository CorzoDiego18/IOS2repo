
import UIKit

let array = [3,5,-4,8,11,1,-1,6]

func findSum(arrayNum: [Int], targetSum: Int) -> [Int]{
    var sortedArray = arrayNum
    sortedArray.sort()
    var l = 0
    var r = sortedArray.count - 1
    
    
    while(l < r){
    var sum = sortedArray[l] + sortedArray[r]
        if sum == targetSum {
            return [sortedArray[l], sortedArray[r]]
        }
        else if sum > targetSum{
            r -= 1
        }
        else if sum < targetSum {
            l += 1
        }
    }
    return []
}

print (findSum(arrayNum: array, targetSum: 10))

a
