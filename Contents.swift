import UIKit

// MARK: - EXAMPLES
/// Ways to print variables
func printNumber(inputNumber: Int) {
    print("Your number is: ", inputNumber)
    print("Your number is: \(inputNumber)")
}
printNumber(inputNumber: 5)

func addFiveTo(inputNumber: Int) -> Int {
    /// use 'var' if your variable changes
    var result = 0
    result = inputNumber + 5
    return result
}



func isEven(inputNumber: Int) -> Bool {
    return inputNumber % 2 == 0
}

func loopExample(targetNum: Int) {
    /// loop from 1 to targetNum
    for num in 1...targetNum {
        print(num)
    }
}


// MARK: - QUESTIONS
func isDivisibleByThree(inputNumber: Int) -> Bool {
    if inputNumber.isMultiple(of: 3) {
        return true
    } else {
        print("Not divisible by 3")
    }
    return false
}
let multiplesOfThree = isDivisibleByThree(inputNumber: 15)
print(multiplesOfThree)

func sumOfThreeNumbers(firstNum: Int, secondNum: Int, thirdNum: Int) -> Int {
    return firstNum + secondNum + thirdNum
}

let addingThreeNumbers = sumOfThreeNumbers(firstNum: 1, secondNum: 2, thirdNum: 3)
print(addingThreeNumbers)

/// divisible by 3 or 5 but not both
func fizzBuzz(num: Int) -> Bool {
    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
        return false
    }
    if num.isMultiple(of: 3) || num.isMultiple(of: 5){
        return true
    }
    return false
}
fizzBuzz(num: 6)
fizzBuzz(num: 10)
fizzBuzz(num: 15)

/// sum all numbers from 1 to target
func sumFromOne(targetEndNum: Int) -> Int {
    var sum = 0
    for counter in 1...targetEndNum {
        sum += counter
    }
    return sum
}
sumFromOne(targetEndNum: 5)

/// sum only even numbers
func sumEvenFromOne(targetEndNum: Int) -> Int {
    var sum = 0
    for counter in 1...targetEndNum {
        if counter.isMultiple(of: 2) {
            sum += counter
        }
    }
    return sum
}
sumEvenFromOne(targetEndNum: 5)

/// loop from 1 to target, sum all numbers that returns true for fizzbuzz
func sumFizzBuzz(targetEndNum: Int) -> Int {
    var sum = 0
    for counter in 1...targetEndNum {
        if counter.isMultiple(of: 3) && counter.isMultiple(of: 5) {
            continue
        }
        if counter.isMultiple(of: 3) {
            sum += counter
            continue
        }
        if counter.isMultiple(of: 5) {
            sum += counter
        }
    }
    return sum
}
sumFizzBuzz(targetEndNum: 100)

func isPrime(num: Int) -> Bool {
    var isPrime = false
    let i = 2
    if num % i == 0 {
            isPrime = false
        } else {
            isPrime = true
        }
    // increment i in a loop
    return isPrime
}

isPrime(num: 6)


/// Take average of two numbers, if there is a decimal place, round up
/// Input 5 and 6 will return 6
func averageTwoNumberRoundUp(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
    let average = CGFloat((firstNum + secondNum) / 2)
    return average.rounded(.up)
}
averageTwoNumberRoundUp(firstNum: 5, secondNum: 6)
