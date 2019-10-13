# DataStructure-Swift
# Binary Search

```swift
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

let numbers = [2,4, 5, 6, 7, 11, 12, 13, 17, 19, 23, 25, 27, 29, 43]
let value = 19
if let index = binarySearch(in: numbers, for: value) {
    print("Found \(value) at index \(index)")
} else {
    print("Did not find \(value)")
}
```

