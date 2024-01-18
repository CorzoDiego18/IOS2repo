import UIKit



//---------------------------------------------------------------//
//1. Write a function that takes an array of integers and returns the sum of all even numbers.
func addEven(_ nums: [Int])-> Int? {
    var total : Int = 0
    for num in nums {
        if ((num % 2) == 0){
            total = total + num
        }
    }
    return total
}


//---------------------------------------------------------------//
//2. Write a function to calculate the factorial of a given number.
//////MIA
func calculateFactorial(_ num: (Int)) -> Int?{
    var result : Int = 0
    for i in 1...num{
        result *= i
    }
   return result
}

/////SUYO
func factorial(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}




//---------------------------------------------------------------//
// 3. Write a function to check if a given string is a palindrome.
func checkPalindrome(_ oldWord: (String) ) -> Bool?{
    var reversedWord = reverseArray(oldWord)
    if(reversedWord == oldWord){
        return true
    }
    else {
        return false
    }
}

//---------------------------------------------------------------//
//4. Write a function to check if a given number is prime.
func checkIfPrime(_ number:(Int)) -> Bool?{
    var count : Int = 0
    for num in 0...number{
        if (number % num == 0){
            count = count + 1
        }
    }
    if(count > 2){
        return true
    }
    else{
        return false
    }
}

//---------------------------------------------------------------//
//5. Write a function to reverse a given string.
func reverseArray(_ normalWord: (String)) -> String?{
    var newWord = ""
    for letter in normalWord {
        newWord = newWord + String(letter)
    }
    return newWord
}

//---------------------------------------------------------------//
// 6. Write a function that takes an array of integers and returns the maximum number.
func maxNumber(_ nums : [Int]) -> Int{
    var maxNumb = -100
    for num in nums{
        if (num < maxNumb){
            maxNumb = num
        }
    }
    return maxNumb
}


//---------------------------------------------------------------//
//7. Write a function that counts the occurrences of each element in an array.

func countOccurrences(_ array: [Int]) -> [Int: Int] {
    var counts: [Int: Int] = [:]

    for element in array {
        counts[element, default: 0] += 1
    }

    return counts
}
