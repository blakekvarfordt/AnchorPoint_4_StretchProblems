/*:
 # Monday Stretch Problem 4.1
 ## Convert to Scientific Notation
 
 ### Instructions:
 1. Create a function called *convertToScientificNotation* that takes in a float as a parameter and returns a string.
 2. The return value should be a string of the number in scientific notation (ex: 8.9 returns "8.9 x 10 ^ 0").
 
 ### Black Diamond 💎💎💎
 Handle negative numbers.
*/

import UIKit



func convertToScientificNotation(float: Float) -> String {
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .scientific
    if float >= 0 {
        formatter.positiveFormat = "0.###E0"
    } else {
        formatter.negativeFormat = "0.###E0"
    }
    formatter.exponentSymbol = " * 10 ˆ"
    if let scientificFormatted = formatter.string(for: float) {
        print(scientificFormatted)
        }
 
    return String(float)
}

convertToScientificNotation(float: -320.333333)

//: [Next](@next)
