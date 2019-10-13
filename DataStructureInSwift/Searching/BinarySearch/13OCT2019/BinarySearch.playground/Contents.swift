//
//  BinarySearch.playground
//  DataStructureInSwift
//
//  Created by Chaman Gurjar on 13/10/19.
//  Copyright © 2019 Chaman Gurjar. All rights reserved.
//

import UIKit

/** IMPORTANT NOTE
 Binary search works because the input array is sorted. If the input array isn’t sorted, binary search won’t work. Moreover, binary search also only works for array values that can be compared, such as numbers.
 */


var str = "Hello, playground"

private func binarySearch(in numbers: [Int], for value: Int) -> Int? {
    var startIndex = 0
    var endIndex = numbers.count - 1
    
    while startIndex <= endIndex {
        let middleIndex = Int(floor(Double(startIndex) + Double(endIndex - startIndex)/2.0))
        // print(middleIndex)
        let middleValue = numbers[middleIndex]
        if middleValue == value {
            return middleIndex
        } else if middleValue < value {
            startIndex = middleIndex + 1
        } else {
            endIndex = middleIndex - 1
        }
    }
    
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
let value = 13
if let index = binarySearch(in: numbers, for: value) {
    print("Found \(value) at index \(index)")
} else {
    print("Did not find \(value)")
}
