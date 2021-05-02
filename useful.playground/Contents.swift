import Foundation
NSDecimalNumber(decimal: pow(2, 10)).intValue

import Foundation

//Sum of integers in string kata
func sumOfIntegersInString(_ string: String) -> Int {
    return string.components(separatedBy: CharacterSet.decimalDigits.inverted).compactMap({Int($0)}).reduce(0, +)
}
sumOfIntegersInString("12.4")
sumOfIntegersInString("h3ll0w0rld")
sumOfIntegersInString("2 + 3 =")
sumOfIntegersInString("Dogs are our best friends")

let numbers = [1,2,3,4,5,6,7,8,9,10]

extension Array where Element == Int {
    func timesTen() -> [Int] {
        var output = [Int]()
        for num in self {
            output.append(num * 10)
        }
        return output
    }
}

let result = numbers.timesTen()
print(numbers)
print(result)

//сумма чисел Фибоначчи
let fibonacci = sequence(first: (0,1) , next: {($1 , $0 + $1) })
    .prefix(20).map{$0.0}
    .filter {$0 % 2 == 0 && $0 < 4000}
print(fibonacci)


